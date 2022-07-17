# frozen_string_literal: true

# Top level doc
class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_action :authenticate_user!, except: [:main]
end
