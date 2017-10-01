class PagesController < ApplicationController
  def index
    @ranked_girls = Girl.vote_count.tap
  end
end
