class FeedEntriesController < ApplicationController
    def index
        render json: todas(FeedEntry.all)
    end
end