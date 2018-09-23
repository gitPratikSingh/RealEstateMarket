class RealStateCompaniesController < ApplicationController
  def new
    @realStateCompany = RealStateCompany.new
  end

  def create
    @realStateCompany = RealStateCompany.new(params.require(:real_state_companies).permit(:name, :website, :address, :size, :founding_year, :revenue, :synopsis))
    if @realStateCompany.save
      redirect_to @realStateCompany
    else
      render 'new'
    end
  end

  def show
    @realStateCompany = RealStateCompany.find(params['id'])
  end

  def index
    @realStateCompany = RealStateCompany.all
  end

  def edit
    @realStateCompany =RealStateCompany.find(params['id'])
  end

  def update
    @realStateCompany = RealStateCompany.find(params['id'])

    if @realStateCompany.update(params.require(:real_state_company).permit(:name,:website,:address,
                                                                         :size,:founding_year,:revenue,
                                                                         :synopsis))
      redirect_to @realStateCompany
    else
      render 'edit'
    end
  end

  def destroy
    @realStateCompany.destroy
    respond_to do |format|
      format.html { redirect_to real_state_companies_url, notice: 'Real State Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
