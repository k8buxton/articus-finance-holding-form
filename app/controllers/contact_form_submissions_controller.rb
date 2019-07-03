class ContactFormSubmissionsController < ApplicationController
  def create
    @contact_form_submission = ContactFormSubmission.new(contact_form_submission_params)
    if @contact_form_submission.save
      flash[:notice] = 'Thank you! We have received your enquiry and will be in touch soon.'
      #ContactFormSubmissionMailer.contact_form_submission_email(@contact_form_submission).deliver_now
    else
      flash[:notice] = 'Sorry! There was an error submitting your request. Please try again.'
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def contact_form_submission_params
    params.require(:contact_form_submission).permit(:first_name, :last_name, :email, :phone_number, :message)
  end
end
