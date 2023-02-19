# frozen_string_literal: true

# Top level doc
class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_action :authenticate_user!, except: [:main]

  rescue_from ActiveRecord::InvalidForeignKey do
    redirect_back fallback_location: root_path, alert: "This items is still in use and can't be deleted"
  end

  def main; end
end
