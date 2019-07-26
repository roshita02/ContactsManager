class ContactsController < ApplicationController
	 before_action :authenticate_user!
  before_action :find_contact, only: [:edit, :update, :destroy, :show]
  def index
  	  search = params[:search].to_s.downcase
      @contacts = (Contact.all).where("lower(firstname) LIKE ? 
      	OR lower(lastname) LIKE ? OR lower(address) LIKE ?","%#{search}%","%#{search}%","%#{search}%" )
  end

  def new
  	@contact = Contact.new
  	@contact.user = current_user
    @contact.phone.build
    @contact.email.build
  	
  end
  def create
  	@contact = Contact.new(contact_params)
    @contact.user = current_user
  	if @contact.save
  		flash[:success] = "Successfully created new contact"
  		redirect_to contacts_path
  	else
  		render 'new'
  	end
  end
  def edit
  end

  def show
  	
  end
  def destroy
  	@contact.destroy
  	flash[:success] = "Successfully deleted contact"
    redirect_to contacts_path
  end
  def update
  	@contact.user = current_user
  	if @contact.update(contact_params)
  		flash[:success] = "Successfully updated contact"
  		redirect_to contacts_path
  	else
  		render 'edit'
  	end
  end
  def find_contact
    @contact = Contact.find(params[:id])

  end

  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :address,phone_attributes: Phone.attribute_names.map(&:to_sym).push(:_destroy),email_attributes: Email.attribute_names.map(&:to_sym).push(:_destroy))
  end

end