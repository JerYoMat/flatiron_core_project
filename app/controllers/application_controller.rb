class ApplicationController < ActionController::Base
  include SessionsHelper
  include ActionView::Helpers::AssetTagHelper
  include ActionView::Helpers::AssetUrlHelper

end
