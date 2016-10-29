class CardsController < ApplicationController

  def index
    render json: Card.where(list_id: params[:list_id]).inject({}) { |cards, card|
      cards[card.id] = card
      cards
    }
  end

  def create
    new_card = List.find(params[:list_id]).cards.create({ title: params[:title] })
    render json: new_card
  end

end
