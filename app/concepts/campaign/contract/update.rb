#:contract
module Campaign::Contract
  class Update < Reform::Form
    # include Dry

    #:property
    property :title
    property :start_date
    property :budget
    property :brief
    #:property end

    #:validation
  validate :start_date do
    errors.add(:start_date, "must be future date") if start_date.to_date < Date.today
  end
    #:validation end
  end
end
#:contract end
