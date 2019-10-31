class Employee < ApplicationRecord
    has_many :disbursement_requests, dependent: :destroy
end
