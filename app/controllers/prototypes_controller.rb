class PrototypesController < ApplicationController
  def prototype_params
    params.require(:prototype).permit(:content, :image).merge(user_id: current_user.id)
  end
end
