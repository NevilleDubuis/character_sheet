class CardDetailsController < ApplicationController
  def show
    @card = current_user.cards.where(:id => params[:id]).first!
    @card_details = eval(@card.type.classname).find(@card.object_id)

    respond_to do |format|
      format.html { render template: "#{@card.type.classname.downcase.pluralize}/show" }
      format.json { render json: @card }
    end
  end

  def update
  end
end
