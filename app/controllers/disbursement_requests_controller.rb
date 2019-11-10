class DisbursementRequestsController < ApplicationController
  before_action :set_disbursement_request, only: [:show, :edit, :update, :destroy]

  # GET /disbursement_requests
  # GET /disbursement_requests.json
  def index
    @disbursement_requests = DisbursementRequest.all
    @disbursement_requests = @disbursement_requests.sort_by &:created_at
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
    @employee                     = Employee.find_by(id: disbursement_request_params[:employee_id])
    disbursement_request_number   = DisbursementRequest.where(employee_id: disbursement_request_params[:employee_id]).count
    employee_salary_balance_param = {:employee_salary_balance => @employee.salary - disbursement_request_params[:amount].to_d}
    monthly_disburse_credit_param = {:montly_used_credit => disbursement_request_number + 1}
    status_param                  = {:status => "PENDING"}
    @disbursement_request         = @employee.disbursement_requests.create(disbursement_request_params.merge(employee_salary_balance_param).merge(monthly_disburse_credit_param).merge(status_param))

    respond_to do |format|
      if @disbursement_request.save
        flash[:success] = "Disbursement request has been approved"
        format.html { redirect_to action: "index", notice: 'Disbursement request was successfully created.' }
        # format.html { redirect_to @disbursement_request, notice: 'Disbursement request was successfully created.' }
        format.json { render :show, status: :created, location: @disbursement_request }
      else
        format.html { render :new }
        format.json { render json: @disbursement_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def approve
    disbursement_request = DisbursementRequest.find(params[:id])
    disbursement_transaction = DisbursementTransaction.new
    disbursement_transaction.status = "PENDING"
    disbursement_transaction.disbursement_request_id = params[:id]
    disbursement_transaction.save!
    disbursement_request.update_column(:status, "APPROVED")
    respond_to do |format|
      flash[:success] = "Disbursement request has been approved"
      format.html { redirect_to action: "index", notice: 'Disbursement request was successfully created.' }
    end
  end
  
  def reject
    disbursement_request = DisbursementRequest.find(params[:id])
    disbursement_request.update_column(:status, "REJECTED")
    respond_to do |format|
      flash[:danger] = "Disbursement request has been rejected"
      format.html { redirect_to action: "index", notice: 'Disbursement request was successfully created.' }
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
      params.require(:disbursement_request).permit(:message, :amount, :disbursement_date, :employee_salary_balance, :employee_salary_balance, :status, :employee_id)
    end
end
