class DinosaursController < ApplicationController
  before_action :set_dinosaur, only: [:show, :edit, :update, :destroy]
  def index
    @dinosaurs = Dinosaur.all
  end

  def carnivorous
    @dinosaurs = Dinosaur.where(group: 'carnivorous')
  end

  def herbivorous
    @dinosaurs = Dinosaur.where(group: 'herbivorous')
  end

  def show
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    @dinosaur.save
    redirect_to dinosaur_path(@dinosaur)
  end

  def edit
  end

  def update
    @dinosaur.update(dinosaur_params)
    redirect_to dinosaur_path(@dinosaur)
  end

  def destroy
    @dinosaur.destroy
    redirect_to dinosaurs_path, status: :see_other
  end
end

private

def set_dinosaur
  @dinosaur = Dinosaur.find(params[:id])
end

def dinosaur_params
  params.require(:dinosaur).permit(:name, :group, :japanese, :image)
end
