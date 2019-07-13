class ContactFormSubmissionMailer < ApplicationMailer
  default from: 'articusfinancewebdev@gmail.com'

  def contact_form_submission_email(contact_form_submission)
    @contact_form_submission = contact_form_submission
    mail(to: 'info@articusfinance.co.uk', subject: 'New form submission')
  end
end
