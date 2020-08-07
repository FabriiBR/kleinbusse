class FlashcardsController < ApplicationController

  def index
    @flashcards = Homework.where(type_off: "flashcard")
  end
end
