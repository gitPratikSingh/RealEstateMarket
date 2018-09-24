class RealEstateCompaniesController < ApplicationController
  def new
    @realStateCompany = RealEstateCompany.new
  end

  def create
    @realStateCompany = RealEstateCompany.new(params.require(:RealEstateCompanies).permit(:name, :website, :address, :size, :founding_year, :revenue, :synopsis))
    if @realStateCompany.save
      redirect_to @realStateCompany
    else
      render 'new'
    end
  end

  def show
    @realStateCompany = RealEstateCompany.find(params['id'])
  end

  def index
    @realStateCompany = RealEstateCompany.all
  end

  def edit
    @realStateCompany =RealEstateCompany.find(params['id'])
  end

  def update
    @realStateCompany = RealEstateCompany.find(params['id'])

    if @realStateCompany.update(params.require(:real_state_company).permit(:name,:website,:address,
                                                                         :size,:founding_year,:revenue,
                                                                         :synopsis))
      redirect_to @realStateCompany
    else
      render 'edit'
    end
  end

  def destroy
    @realStateCompany =RealEstateCompany.find(params['id'])
    @realStateCompany.destroy
    respond_to do |format|
      format.html { redirect_to realEstateCompanies_url, notice: 'Real State Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
