class IncomingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    puts "\nINCOMING PARAMS:\n#{params}"
  end
end