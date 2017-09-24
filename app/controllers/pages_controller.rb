class PagesController < ApplicationController
  def index
    @highest_ranking_girl = Girl.vote_count
  end
end
