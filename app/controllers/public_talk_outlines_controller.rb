class PublicTalkOutlinesController < ApplicationController
  before_action :set_public_talk_outline, only: [:show, :edit, :update, :destroy]

  # GET /public_talk_outlines
  # GET /public_talk_outlines.json
  def index
    @public_talk_outlines = PublicTalkOutline.all
  end

  # GET /public_talk_outlines/1
  # GET /public_talk_outlines/1.json
  def show
  end

  # GET /public_talk_outlines/new
  def new
    @public_talk_outline = PublicTalkOutline.new
  end

  # GET /public_talk_outlines/1/edit
  def edit
  end

  # POST /public_talk_outlines
  # POST /public_talk_outlines.json
  def create
    @public_talk_outline = PublicTalkOutline.new(public_talk_outline_params)
    @public_talk_outline.talk_outline_pdf.attach(params[:talk_outline_pdf])

    respond_to do |format|
      if @public_talk_outline.save
        format.html { redirect_to @public_talk_outline, notice: 'Public talk outline was successfully created.' }
        format.json { render :show, status: :created, location: @public_talk_outline }
      else
        format.html { render :new }
        format.json { render json: @public_talk_outline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_talk_outlines/1
  # PATCH/PUT /public_talk_outlines/1.json
  def update
    respond_to do |format|
      if @public_talk_outline.update(public_talk_outline_params)
        format.html { redirect_to @public_talk_outline, notice: 'Public talk outline was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_talk_outline }
      else
        format.html { render :edit }
        format.json { render json: @public_talk_outline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_talk_outlines/1
  # DELETE /public_talk_outlines/1.json
  def destroy
    @public_talk_outline.destroy
    respond_to do |format|
      format.html { redirect_to public_talk_outlines_url, notice: 'Public talk outline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_talk_outline
      @public_talk_outline = PublicTalkOutline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def public_talk_outline_params
      params.require(:public_talk_outline).permit(:outline_name, :outline_number, :outline_note, :outline_date, :talk_outline_pdf)
    end
end
