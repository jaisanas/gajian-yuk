class DisbursementTransactionLogsController < ApplicationController
  before_action :set_disbursement_transaction_log, only: [:show, :edit, :update, :destroy]

  # GET /disbursement_transaction_logs
  # GET /disbursement_transaction_logs.json
  def index
    @disbursement_transaction_logs = DisbursementTransactionLog.all
  end

  # GET /disbursement_transaction_logs/1
  # GET /disbursement_transaction_logs/1.json
  def show
  end

  # GET /disbursement_transaction_logs/new
  def new
    @disbursement_transaction_log = DisbursementTransactionLog.new
  end

  # GET /disbursement_transaction_logs/1/edit
  def edit
  end

  # POST /disbursement_transaction_logs
  # POST /disbursement_transaction_logs.json
  def create
    @disbursement_transaction_log = DisbursementTransactionLog.new(disbursement_transaction_log_params)

    respond_to do |format|
      if @disbursement_transaction_log.save
        format.html { redirect_to @disbursement_transaction_log, notice: 'Disbursement transaction log was successfully created.' }
        format.json { render :show, status: :created, location: @disbursement_transaction_log }
      else
        format.html { render :new }
        format.json { render json: @disbursement_transaction_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disbursement_transaction_logs/1
  # PATCH/PUT /disbursement_transaction_logs/1.json
  def update
    respond_to do |format|
      if @disbursement_transaction_log.update(disbursement_transaction_log_params)
        format.html { redirect_to @disbursement_transaction_log, notice: 'Disbursement transaction log was successfully updated.' }
        format.json { render :show, status: :ok, location: @disbursement_transaction_log }
      else
        format.html { render :edit }
        format.json { render json: @disbursement_transaction_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disbursement_transaction_logs/1
  # DELETE /disbursement_transaction_logs/1.json
  def destroy
    @disbursement_transaction_log.destroy
    respond_to do |format|
      format.html { redirect_to disbursement_transaction_logs_url, notice: 'Disbursement transaction log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disbursement_transaction_log
      @disbursement_transaction_log = DisbursementTransactionLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disbursement_transaction_log_params
      params.fetch(:disbursement_transaction_log, {})
    end
end
