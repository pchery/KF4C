class IdeasController < ApplicationController

  def index
   @idea = Idea.last 	
   @array = Idea.limit(4).order("RANDOM()")
   @word1 = Idea.offset(rand(Idea.count)).second
  # @word1 = Idea.limit(1).order("RANDOM()") 
   @word2 = Idea.offset(rand(Idea.count)).first 
   @word3 = Idea.offset(rand(Idea.count)).third
   @word4 = Idea.offset(rand(Idea.count)).fourth


#@array = [0,1,2,3,4]
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
    params.require(:idea).permit(:idname)
  end


end
