class Admin::ConsultationsController < ApplicationController
  before_action :authenticate_administrator!

  layout 'admin'

  def index
  end
end
