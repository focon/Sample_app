class SessionsController < ApplicationController
  def new
@title="Sign in"
  end


  def create
@title="Sign up"
  end
  def destroy
@title="Sign out"
  end

end
