#:contract
require "reform"
require "reform/form/dry"

module Campaign::Contract
  class Create < Reform::Form
    # include Dry

    #:property
    property :title
    property :start_date
    property :budget
    property :brief
    

  validate :start_date do
    errors.add(:start_date, "must be future date") if start_date.to_date < Date.today
  end

  
  end
end
#:contract end




