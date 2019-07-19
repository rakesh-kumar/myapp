#:createop
class Campaign::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Campaign, :new)
    step Contract::Build( constant: Campaign::Contract::Create )
  end

  #~present
  step Nested( Present )
  step Contract::Validate( key: :campaign )
  step Contract::Persist( )
  step :notify!

  def notify!(options, model:, **)
    options["result.notify"] = Rails.logger.info("New Campaign #{model.title}.")
  end
  #~present end
end
#:createop end
