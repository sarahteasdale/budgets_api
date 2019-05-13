class SessionsController < ApplicationController  
    def create
      puts params.inspect
      puts session_params.inspect
      if @user = User.authenticate(session_params[:username], 
                                   session_params[:password])
  
        session[:users_id] = @user.id
        render status: :created
      else
        render json: { error: 'Invalid credentials' }, 
               status: :unauthorized
      end
    end
  
    def destroy
      session[:users_id] = nil
      head :ok
    end
  
  private
  
    def session_params
      params.require(:session).permit(:username, :password)
    end
  end
  