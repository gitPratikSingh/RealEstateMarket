class PotentialBuyersListsController < ApplicationController
  before_action :set_potential_buyers_list, only: [:show, :edit, :update, :destroy]

  # GET /potential_buyers_lists
  # GET /potential_buyers_lists.json
  def index
    @potential_buyers_lists = PotentialBuyersList.all
  end

  # GET /potential_buyers_lists/1
  # GET /potential_buyers_lists/1.json
  def show
  end

  # GET /potential_buyers_lists/new
  def new
    @potential_buyers_list = PotentialBuyersList.new
  end

  # GET /potential_buyers_lists/1/edit
  def edit
  end

  # POST /potential_buyers_lists
  # POST /potential_buyers_lists.json
  def create
    @potential_buyers_list = PotentialBuyersList.new(potential_buyers_list_params)

    respond_to do |format|
      if @potential_buyers_list.save
        format.html { redirect_to @potential_buyers_list, notice: 'Potential buyers list was successfully created.' }
        format.json { render :show, status: :created, location: @potential_buyers_list }
      else
        format.html { render :new }
        format.json { render json: @potential_buyers_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potential_buyers_lists/1
  # PATCH/PUT /potential_buyers_lists/1.json
  def update
    respond_to do |format|
      if @potential_buyers_list.update(potential_buyers_list_params)
        format.html { redirect_to @potential_buyers_list, notice: 'Potential buyers list was successfully updated.' }
        format.json { render :show, status: :ok, location: @potential_buyers_list }
      else
        format.html { render :edit }
        format.json { render json: @potential_buyers_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potential_buyers_lists/1
  # DELETE /potential_buyers_lists/1.json
  def destroy
    @potential_buyers_list.destroy
    respond_to do |format|
      format.html { redirect_to potential_buyers_lists_url, notice: 'Potential buyers list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potential_buyers_list
      @potential_buyers_list = PotentialBuyersList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potential_buyers_list_params
      params.require(:potential_buyers_list).permit(:house_id)
    end
end
