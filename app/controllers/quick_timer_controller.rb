class QuickTimerController < ApplicationController
  before_filter :authenticate_user!
  # GET /quick_timer
  # GET /quick_timer.json
  def index    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end