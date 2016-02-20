class IdeasController < ApplicationController

  def index
   @idea = Idea.last	
   #@ideas = Idea.limit(4).order("RANDOM()")
   
  end


 
  def new
    @idea = Idea.new
  end
  
  def create
    @idea = Idea.new(idea_params)
    if @idea.save	
      redirect_to ideas_path
    else 
	redirect_to new_idea_path
    end 
  end

  def destroy
    @idea = Idea.find(params[:id])
  @idea.destroy
  redirect_to ideas_path
  end 

  def randShow
    #@ideas = Idea.all
    @ideas = Idea.limit(10).order("RANDOM()")
    render 'randShow'
  end 

  private
   def idea_params
    params.require(:idea).permit(:name)
  end


end
