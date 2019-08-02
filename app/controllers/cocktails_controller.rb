class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @review = Review.new
    @reviews = @cocktail.reviews
    @dose = Dose.new
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.update(cocktail_params)
      redirect_to cocktail_path(@cocktail)
    else
      render :edit
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    redirect_to cocktails_path
  end

  def search
    # # @cocktails = Cocktail.select(params[:name])
    # @name = search[:query]
    # @cocktails = Cocktail.where("name LIKE '%#{@name}%'")
  end

  private

  def cocktail_params
    return params.require(:cocktail).permit(:name, :photo)
  end

end
