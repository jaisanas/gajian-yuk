class DisbursementTransactionsController < ApplicationController
  before_action :set_disbursement_transaction, only: [:show, :edit, :update, :destroy]

  # GET /disbursement_transactions
  # GET /disbursement_transactions.json
  def index
    @disbursement_transactions = DisbursementTransaction.all
  end

  # GET /disbursement_transactions/1
  # GET /disbursement_transactions/1.json
  def show
  end

  # GET /disbursement_transactions/new
  def new
    @disbursement_transaction = DisbursementTransaction.new
  end

  # GET /disbursement_transactions/1/edit
  def edit
  end

  # POST /disbursement_transactions
  # POST /disbursement_transactions.json
  def create
    @disbursement_transaction = DisbursementTransaction.new(disbursement_transaction_params)

    respond_to do |format|
      if @disbursement_transaction.save
        format.html { redirect_to @disbursement_transaction, notice: 'Disbursement transaction was successfully created.' }
        format.json { render :show, status: :created, location: @disbursement_transaction }
      else
        format.html { render :new }
        format.json { render json: @disbursement_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disbursement_transactions/1
  # PATCH/PUT /disbursement_transactions/1.json
  def update
    respond_to do |format|
      if @disbursement_transaction.update(disbursement_transaction_params)
        format.html { redirect_to @disbursement_transaction, notice: 'Disbursement transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @disbursement_transaction }
      else
        format.html { render :edit }
        format.json { render json: @disbursement_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disbursement_transactions/1
  # DELETE /disbursement_transactions/1.json
  def destroy
    @disbursement_transaction.destroy
    respond_to do |format|
      format.html { redirect_to disbursement_transactions_url, notice: 'Disbursement transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disbursement_transaction
      @disbursement_transaction = DisbursementTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disbursement_transaction_params
      params.fetch(:disbursement_transaction, {})
    end
end
