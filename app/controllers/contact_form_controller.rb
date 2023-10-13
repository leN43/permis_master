class ContactFormController < ApplicationController
  def create
    @name = params[:contact_form][:name]
    @last_name = params[:contact_form][:last_name]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]
    @subject = params[:contact_form][:subject]

    # Perform any necessary actions with the form data
    flash[:success] = "Your message has been sent successfully."
    redirect_to :informations
end
end
