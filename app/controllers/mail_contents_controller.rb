class MailContentsController < ApplicationController
  before_action :set_mail_content, only: %i[ show edit update destroy ]

  # GET /mail_contents or /mail_contents.json
  def index
    @mail_contents = MailContent.all
  end

  # GET /mail_contents/1 or /mail_contents/1.json
  def show
  end

  # GET /mail_contents/new
  def new
    @mail_content = MailContent.new
  end

  # GET /mail_contents/1/edit
  def edit
  end

  # POST /mail_contents or /mail_contents.json
  def create
    @mail_content = MailContent.new(mail_content_params)

    respond_to do |format|
      if @mail_content.save
        format.html { redirect_to mail_content_url(@mail_content), notice: "Mail content was successfully created." }
        format.json { render :show, status: :created, location: @mail_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mail_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_contents/1 or /mail_contents/1.json
  def update
    respond_to do |format|
      if @mail_content.update(mail_content_params)
        format.html { redirect_to mail_content_url(@mail_content), notice: "Mail content was successfully updated." }
        format.json { render :show, status: :ok, location: @mail_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mail_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_contents/1 or /mail_contents/1.json
  def destroy
    @mail_content.destroy

    respond_to do |format|
      format.html { redirect_to mail_contents_url, notice: "Mail content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail_content
      @mail_content = MailContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mail_content_params
      params.require(:mail_content).permit(:subject, :content)
    end
end
