class AssignaturesController < ApplicationController
  before_action :set_assignature, only: [:show]

  def index
    @assignatures = current_user.assignatures
 
  end

  def show
  end

  private

  def set_assignature
    @assignature = Assignature.find(params[:id])
  end

end
