class FlashcardsController < ApplicationController

  def index
    @flashcards = Homework.where(type: 1)
  end
end
