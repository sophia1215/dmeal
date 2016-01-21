class OrgCompaniesController < ApplicationController
  before_action :signed_in_user, only: [:new]

  def new
    # Be sure the user is signed in before he can create a company
    # signed_in_user
    # Make new company object
    @company = OrgCompany.new
    # Make new contact object w/ empty attributes
    @contactInfo = OrgContact.new.attributes
    @company.org_contacts.build(@contactInfo)
  end

  def edit
  end

  def show
  end

  private

  # Checks if the user is signed in, if they are skip this function, if not
  # redirect him to sign in page and save the last page they were on so
  # we can redirect him back to that page when he signs in.
  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, flash: {warning: "Please sign"}
    end
  end
end
