class FlashcardsController < ApplicationController

  def index
    @flashcards = Homework.where(type: "flashcard"}
  end
end
