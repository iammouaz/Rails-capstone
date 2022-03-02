class GroupInvestmentsController < ApplicationController
  load_and_authorize_resource
  before_action :set_group_investment, only: %i[show edit update destroy]

  # GET /group_investments or /group_investments.json
  def index
    @group_investments = GroupInvestment.all
  end

  # GET /group_investments/1 or /group_investments/1.json
  def show; end

  # GET /group_investments/new
  def new
    @group_investment = GroupInvestment.new
  end

  # GET /group_investments/1/edit
  def edit; end

  # POST /group_investments or /group_investments.json
  def create
    @group_investment = GroupInvestment.new(group_investment_params)

    respond_to do |format|
      if @group_investment.save
        format.html do
          redirect_to group_investment_url(@group_investment), notice: 'Group investment was successfully created.'
        end
        format.json { render :show, status: :created, location: @group_investment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_investments/1 or /group_investments/1.json
  def update
    respond_to do |format|
      if @group_investment.update(group_investment_params)
        format.html do
          redirect_to group_investment_url(@group_investment), notice: 'Group investment was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @group_investment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_investments/1 or /group_investments/1.json
  def destroy
    @group_investment.destroy

    respond_to do |format|
      format.html { redirect_to group_investments_url, notice: 'Group investment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group_investment
    @group_investment = GroupInvestment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def group_investment_params
    params.require(:group_investment).permit(:group_id, :investment_id)
  end
end
