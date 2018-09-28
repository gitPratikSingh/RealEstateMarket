class InterestListsController < ApplicationController
  before_action :set_interest_list, only: [:show, :edit, :update, :destroy]

  # GET /interest_lists
  # GET /interest_lists.json
  def index
    @interest_lists = InterestList.all
  end

  # GET /interest_lists/1
  # GET /interest_lists/1.json
  def show
  end

  # GET /interest_lists/new
  def new
    @interest_list = InterestList.new
  end

  # GET /interest_lists/1/edit
  def edit
  end

  # POST /interest_lists
  # POST /interest_lists.json
  def create
    @interest_list = InterestList.new(interest_list_params)

    respond_to do |format|
      if @interest_list.save
        format.html { redirect_to @interest_list, notice: 'Interest list was successfully created.' }
        format.json { render :show, status: :created, location: @interest_list }
      else
        format.html { render :new }
        format.json { render json: @interest_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_lists/1
  # PATCH/PUT /interest_lists/1.json
  def update
    respond_to do |format|
      if @interest_list.update(interest_list_params)
        format.html { redirect_to @interest_list, notice: 'Interest list was successfully updated.' }
        format.json { render :show, status: :ok, location: @interest_list }
      else
        format.html { render :edit }
        format.json { render json: @interest_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_lists/1
  # DELETE /interest_lists/1.json
  def destroy
    @interest_list.destroy
    respond_to do |format|
      format.html { redirect_to interest_lists_url, notice: 'Interest list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_list
      @interest_list = InterestList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_list_params
      params.require(:interest_list).permit(:house_hunter_id)
    end
end
