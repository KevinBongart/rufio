class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :find_environments

  private

  def find_environments
    @environments = Environment.all
  end
end
