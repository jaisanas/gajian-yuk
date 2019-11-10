class DisbursementTransactionLog < ApplicationRecord
    self.table_name = "dt_logs"
    belongs_to :disbursement_transaction
end
