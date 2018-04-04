class SessionsController < ApplicationController
  def new
  end
  before_action :block_access, except: [:destroy]
    def create  
              @user = User.find_by(email: params[:session][:email].downcase)
              if @user && @user.authenticate(params[:session][:password])
                          sign_in(@user)
              redirect_to @user
      else
              render 'new'
      end
    end
  
end

def create  
              @user = User.find_by(email: params[:session][:email].downcase)
                          if @user && @user.authenticate(params[:session][:password])
                                     sign_in(@user)
                                     redirect_to current_user
                          else
                                     render action: :new
                          end
              end
   
    def destroy
              sign_out
      redirect_to root_url
    end















