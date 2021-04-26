class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy ]

  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
    # House.create(house_params)
    @house = House.new(house_params)
    # if params[:back]
      # render :new
  #   else
      if @house.save
        redirect_to houses_path, notice: "物件を登録しました。"
      else
        render :new
      end
  #   end
  end

  def show
  end

  def edit
    # redirect_to houses_path
  end

  def update
    if @house.update(house_params)
      redirect_to houses_path, notice: "物件情報を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @house.destroy
    redirect_to houses_path, notice:"物件情報を削除しました。"
  end

  # def confirm
  #   @house = current_user.houses.build(house_params)
  #   render :new if @house.invalid?
  # end

  private
  def house_params
    params.require(:house).permit(:title, :rent_fee, :address, :age, :remark)
  end

  def set_house
    @house = House.find(params[:id])
  end

end
