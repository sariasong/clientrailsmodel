class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
  @client = Client.new(clients_params)

    if @client.save
      redirect_to =clients_path
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(clients_params)
      redirect_to clients_path
    else
      render :edit
    end
  end

  private

  def clients_params
    params.require(:client).permit(:name, :age, :hair_color, :eye_color, :gender)
  end
end
