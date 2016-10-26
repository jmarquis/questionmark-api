class CardsController < ApplicationController

  def index
    render json: Card.where(list_id: params[:list_id]).inject({}) { |cards, card|
      cards[card.id] = card
      cards
    }
  end

end
