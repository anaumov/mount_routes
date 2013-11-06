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
    @mount = Mount.find(params[:id])
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
    @mount = Mount.find(params[:id])
    if @mount.update(mount_params)
      redirect_to @mount, notice: 'Route was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @mount = Mount.find(params[:id])
    @mount.destroy
    redirect_to mounts_url
  end

  def image_delete
    @mount = Mount.find(params[:mount_id])
    if @mount.update(remove_image: true)
      render 'edit'
    else
      notice 'unable to delete the file'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mount_params
      params.require(:mount).permit(:title, :height, :region, :image)
    end
end

