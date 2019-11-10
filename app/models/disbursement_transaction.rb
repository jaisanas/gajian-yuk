class DisbursementTransaction < ApplicationRecord
    belongs_to :disbursement_request
end
