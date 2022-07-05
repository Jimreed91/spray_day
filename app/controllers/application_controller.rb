# frozen_string_literal: true

# Top level doc
class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:main]
end
