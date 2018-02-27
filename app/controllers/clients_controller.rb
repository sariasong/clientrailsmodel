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

  private

  def clients_params
    params.require(:client).permit(:name, :age, :hair_color, :eye_color, :gender)
  end
end
