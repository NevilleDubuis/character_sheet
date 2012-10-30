class CardsController < ApplicationController
  before_filter :authenticate_user!

  # GET /cards
  # GET /cards.json
  def index
    @cards = current_user.cards

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cards }
    end
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
    @card= current_user.cards.where(:id => params[:id]).first!
    @card_details = eval(@card.type.name).find(@card.object_id)

    respond_to do |format|
      format.html { render template: "#{@card.type.name.downcase.pluralize}/show" }
      format.json { render json: @card }
    end
  end

  # GET /cards/new
  # GET /cards/new.json
  def new
    @card = Card.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @card }
    end
  end

  # GET /cards/1/edit
  def edit
    @card = current_user.cards.where(:id => params[:id]).first!
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = Card.new(params[:card])
    @card.user_id = current_user.id
    @card.object_id = eval(@card.type.name).create

    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully created.' }
        format.json { render json: @card, status: :created, location: @card }
      else
        format.html { render action: "new" }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cards/1
  # PUT /cards/1.json
  def update
    @card = current_user.cards.where(:id => params[:id]).first!

    respond_to do |format|
      if @card.update_attributes(params[:card])
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card = current_user.cards.where(:id => params[:id]).first!
    @card.destroy

    respond_to do |format|
      format.html { redirect_to cards_url }
      format.json { head :no_content }
    end
  end
end
