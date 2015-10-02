class PledgesController < ApplicationController
  def create

  	# @project = Project.find_by(id: params[:id])
  	@reward = Reward.find(params[:reward_id])
  	@pledge = Pledge.new(pledge_params)
  	@pledge.user = current_user
  	@pledge.reward = @reward

  	respond_to do |format|
  		if @pledge.save
  			format.html { redirect_to project_path(@project.id), notice: 'You Backed This!'}
  			format.js {}
  		else
  			format.html { render 'projects/show', alert: "There was an error processing your request"}
  			format.js {}
  		end
  	end
  end

  private
  def pledge_params
  	params.require(:pledge).permit(:amount, :user_id, :project_id)
  end
end
