class RamUsesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @ram_uses = RamUse.all
  end

  def show
  end

  def new
    @ram_use = RamUse.new
  end


  def create
    @ram_use = RamUse.new(ram_use_params)
    respond_to do |format|
      if @ram_use.save
        format.html { redirect_to @ram_use, notioce: 'Use was successfully created.' }
        format.json { render :show, status: :created, location: @ram_use }
      else
        format.html { render :new }
        format.json { render json: @ram_use.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ram_use
      @ram_use = RamUse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ram_use_params
      params.require(:ram_use).permit(:value)
    end

end
