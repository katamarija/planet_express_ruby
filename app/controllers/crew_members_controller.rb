class CrewMembersController < ApplicationController
  def index
    Rails.logger.info "some index info"
  end

  def show
    Rails.logger.info "some show info"
  end
end
