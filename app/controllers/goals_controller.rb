class GoalsController < ApplicationController
  def create
    @goal = Goal.new(params[:goal])
    if @goal.save
    	redirect_to @goal
    else
    	render "new"
    end
  end

  def index
	  @goals = Goal.all
  end

  def new
  	@goal = Goal.new
  end
end
