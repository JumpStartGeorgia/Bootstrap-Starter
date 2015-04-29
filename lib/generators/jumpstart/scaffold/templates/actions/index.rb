  def index
    @<%= instances_name %> = <%= class_name %>.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @<%= instances_name %> }
    end
  end
