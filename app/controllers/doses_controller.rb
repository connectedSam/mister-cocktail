class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def show
    @dose = dose.find(params[:id])
  end

  def new
     @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def edit
    @dose = dose.find(params[:id])
  end

  def update
    if @dose.update(dose_params)
      redirect_to dose_path(@dose)
    else
      render :edit
    end
  end

end
