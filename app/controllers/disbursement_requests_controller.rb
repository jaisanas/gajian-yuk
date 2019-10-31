class DisbursementRequestsController < ApplicationController
  before_action :set_disbursement_request, only: [:show, :edit, :update, :destroy]

  # GET /disbursement_requests
  # GET /disbursement_requests.json
  def index
    @disbursement_requests = DisbursementRequest.all
  end

  # GET /disbursement_requests/1
  # GET /disbursement_requests/1.json
  def show
  end

  # GET /disbursement_requests/new
  def new
    @disbursement_request = DisbursementRequest.new
  end

  # GET /disbursement_requests/1/edit
  def edit
  end

  # POST /disbursement_requests
  # POST /disbursement_requests.json
  def create
    @disbursement_request = DisbursementRequest.new(disbursement_request_params)

    respond_to do |format|
      if @disbursement_request.save
        format.html { redirect_to @disbursement_request, notice: 'Disbursement request was successfully created.' }
        format.json { render :show, status: :created, location: @disbursement_request }
      else
        format.html { render :new }
        format.json { render json: @disbursement_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disbursement_requests/1
  # PATCH/PUT /disbursement_requests/1.json
  def update
    respond_to do |format|
      if @disbursement_request.update(disbursement_request_params)
        format.html { redirect_to @disbursement_request, notice: 'Disbursement request was successfully updated.' }
        format.json { render :show, status: :ok, location: @disbursement_request }
      else
        format.html { render :edit }
        format.json { render json: @disbursement_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disbursement_requests/1
  # DELETE /disbursement_requests/1.json
  def destroy
    @disbursement_request.destroy
    respond_to do |format|
      format.html { redirect_to disbursement_requests_url, notice: 'Disbursement request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disbursement_request
      @disbursement_request = DisbursementRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disbursement_request_params
      params.fetch(:disbursement_request, {})
    end
end
