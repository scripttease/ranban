class BoardsController < ApplicationController

  # GET /boards
  def index
    @boards = Board.all
  end

  # GET /boards/1
  def show
    @board = Board.find(params[:id])
  end

  # GET /boards/new
  def new
    @board = Board.new
  end

  # GET /boards/1/edit
  def edit
    @board = Board.find(params[:id])
  end

  # POST /boards
  def create
    @board = Board.new(board_params)

    respond_to do |format|
      if @board.save
        redirect_to @board, notice: 'Board was successfully created.'
      else
        render :new
      end
    end
  end

  # PATCH/PUT /boards/1
  def update
    @board = Board.find(params[:id])
    respond_to do |format|
      if @board.update(board_params)
        redirect_to @board, notice: 'Board was successfully updated.'
      else
        render :edit 
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def board_params
    params.fetch(:board, {})
  end
end

