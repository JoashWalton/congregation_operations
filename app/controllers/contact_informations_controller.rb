class ContactInformationsController < ApplicationController
  before_action :set_contact_information, only: [:show, :edit, :update, :destroy]

  # GET /contact_informations
  # GET /contact_informations.json
  def index
    @contact_informations = ContactInformation.all
  end

  # GET /contact_informations/1
  # GET /contact_informations/1.json
  def show
  end

  # GET /contact_informations/new
  def new
    @contact_information = ContactInformation.new
  end

  # GET /contact_informations/1/edit
  def edit
  end

  # POST /contact_informations
  # POST /contact_informations.json
  def create
    @contact_information = ContactInformation.new(contact_information_params)

    respond_to do |format|
      if @contact_information.save
        format.html { redirect_to @contact_information, notice: 'Contact information was successfully created.' }
        format.json { render :show, status: :created, location: @contact_information }
      else
        format.html { render :new }
        format.json { render json: @contact_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_informations/1
  # PATCH/PUT /contact_informations/1.json
  def update
    respond_to do |format|
      if @contact_information.update(contact_information_params)
        format.html { redirect_to @contact_information, notice: 'Contact information was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_information }
      else
        format.html { render :edit }
        format.json { render json: @contact_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_informations/1
  # DELETE /contact_informations/1.json
  def destroy
    @contact_information.destroy
    respond_to do |format|
      format.html { redirect_to contact_informations_url, notice: 'Contact information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_information
      @contact_information = ContactInformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_information_params
      params.require(:contact_information).permit(:personal_email, :branch_email, :mobile_phone_number, :home_phone_number, :mailing_address, :mailing_city, :mailing_state, :mailing_zip_code, :country, :apartment, :post_office_box_number, :post_office_box_city, :post_office_box_state, :post_office_box_zip_code)
    end
end
