#:delete
class Campaign::Delete < Trailblazer::Operation
  step Model(Campaign, :find_by)
  step :delete!

  def delete!(options, model:, **)
    model.destroy
  end
end
#:delete end
