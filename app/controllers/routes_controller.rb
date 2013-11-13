class RoutesController < InheritedResources::Base
  
  def permitted_params
    params.require(:route).permit!
  end

  def index
    @q = Route.search(params[:q])
    @routes = @q.result(distinct: true)
  end

end