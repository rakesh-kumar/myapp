#:update
class Campaign::Update < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Campaign, :find_by)
    step Contract::Build( constant: Campaign::Contract::Create )
  end

  step Nested(Present)
  step Contract::Validate( key: :campaign )
  step Contract::Persist()
end
#:update end
