class PagesController < ApplicationController
  def home
    @contact_form_submission = ContactFormSubmission.new
  end
end
