# Many:Many relationship between outcomes and outcome groups
class OutcomeMapping < ActiveRecord::Base
  belongs_to :outcome_group, inverse_of: :outcome_mappings
  belongs_to :outcome, inverse_of: :outcome_mappings
end