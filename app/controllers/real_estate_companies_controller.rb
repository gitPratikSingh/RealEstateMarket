class RealEstateCompaniesController < ApplicationController
  def new
    @realEstateCompany = RealEstateCompany.new
  end

  def create
    @realEstateCompany = RealEstateCompany.new(params.require(:real_estate_company).permit(:name, :website, :address, :size, :founded, :revenue, :synopsis))
    if @realEstateCompany.save
      redirect_to @realEstateCompany
    else
      render 'new'
    end
  end

  def show
    @realEstateCompany = RealEstateCompany.find(params['id'])
  end

  def index
    @realEstateCompanies = RealEstateCompany.all
  end

  def edit
    @realEstateCompany =RealEstateCompany.find(params['id'])
  end

  def update
    @realEstateCompany = RealEstateCompany.find(params['id'])

    if @realEstateCompany.update(params.require(:real_estate_company).permit(:name,:website,:address,
                                                                         :size,:founded,:revenue,
                                                                         :synopsis))
      redirect_to @realEstateCompany
    else
      render 'edit'
    end
  end

  def destroy
    @realEstateCompany =RealEstateCompany.find(params['id'])
    @realEstateCompany.destroy
    respond_to do |format|
      format.html { redirect_to real_estate_companies_url, notice: 'Real State Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
