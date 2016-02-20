class IdeasController < ApplicationController
 
  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save	
      redirect_to new_idea_path
    end 
  end

  def destroy
  end 

  def randShow
  end 

  private
   def idea_params
   params.require(:idea).permit(:name)
  end


end
