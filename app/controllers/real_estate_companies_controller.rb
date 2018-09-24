class RealEstateCompaniesController < ApplicationController
  def new
    @real_estate_company = RealEstateCompany.new
  end

  def create
    @real_estate_company = RealEstateCompany.new(params.require(:RealEstateCompanies).permit(:name, :website, :address, :size, :founding_year, :revenue, :synopsis))
    if @real_estate_company.save
      redirect_to @real_estate_company
    else
      render 'new'
    end
  end

  def show
    @real_estate_company = RealEstateCompany.find(params['id'])
  end

  def index
    @real_estate_company = RealEstateCompany.all
  end

  def edit
    @real_estate_company =RealEstateCompany.find(params['id'])
  end

  def update
    @real_estate_company = RealEstateCompany.find(params['id'])

    if @real_estate_company.update(params.require(:real_state_company).permit(:name, :website, :address,
                                                                              :size, :founding_year, :revenue,
                                                                              :synopsis))
      redirect_to @real_estate_company
    else
      render 'edit'
    end
  end

  def destroy
    @real_estate_company =RealEstateCompany.find(params['id'])
    @real_estate_company.destroy
    respond_to do |format|
      format.html { redirect_to realEstateCompanies_url, notice: 'Real Estate Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
