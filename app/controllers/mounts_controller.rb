class MountsController < ApplicationController

  def index
    @mounts = Mount.all
  end

  def show
    @mount = Mount.find(params[:id])
  end

  def new
    @mount = Mount.new
  end

  def edit
  end

  def create
    @mount = Mount.new(mount_params)
    if @mount.save
      redirect_to @mount, notice: 'Route was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @mount.update(route_params)
      redirect_to @mount, notice: 'Route was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @mount.destroy
    redirect_to mounts_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mount_params
      params.require(:mount).permit(:title, :height, :region)
    end
end

