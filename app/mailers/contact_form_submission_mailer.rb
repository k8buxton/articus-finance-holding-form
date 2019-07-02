class ContactFormSubmissionMailer < ApplicationMailer
  default from: 'jonny.gates@outlook.com'

  def contact_form_submission_email(contact_form_submission)
    @contact_form_submission = contact_form_submission
    mail(to: 'jonny.gates@outlook.com', subject: 'New form submission')
  end
end
