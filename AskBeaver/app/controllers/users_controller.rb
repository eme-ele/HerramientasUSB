class UsersController < ApplicationController
	
	def index
    	@users = User.all
		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @users }
    	end
  	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		params[:user].delete(:password) if params[:user][:password].blank?
    	params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
	    if @user.update_attributes(params[:user])
	    	flash[:notice] = "Successfully updated User."
	    	redirect_to root_path
	    else
	    	render :action => 'edit'
	    end
	end

	def destroy
		@user = User.find(params[:id])
	    @user.destroy
	    respond_to do |format|
			format.html { redirect_to users_url }
			format.json { head :no_content }
	    end
	end
end
