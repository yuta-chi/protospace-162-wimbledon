class PrototypesController < ApplicationController
  def index

  end

  def new
    
  end

  def create

  end
  
  
  
  def prototype_params
    params.require(:prototype).permit(:content, :image).merge(user_id: current_user.id)
  end
end
