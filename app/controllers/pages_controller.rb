class PagesController < ApplicationController
 skip_before_action :authenticate_user!, only: :home
  def home
    @naked = true
  end
end
