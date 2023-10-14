class ContactFormController < ApplicationController
  def create
    @name = params[:contact_form][:nom]
    @last_name = params[:contact_form][:last_name]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]
    @objet = params[:contact_form][:objet]

    # Perform any necessary actions with the form data
    flash[:success] = 'Message bien envoyé !'
    redirect_to :contact
end
end
