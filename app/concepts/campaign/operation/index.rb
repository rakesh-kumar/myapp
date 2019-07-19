#:indexop
class Campaign::Index < Trailblazer::Operation
  step :model!

  def model!(options, *)
    options["model"] = ::Campaign.all.reverse_order
  end
end
#:indexop end
