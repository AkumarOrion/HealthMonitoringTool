class ApplicationController < ActionController::Base
  respond_to :html, :js
  include ApplicationHelper
end
