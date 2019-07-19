#:showop
class Campaign::Show < Trailblazer::Operation
  step Model(Campaign, :find_by)
end
#:showop end
