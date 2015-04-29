  def create
    @<%= instance_name %> = <%= class_name %>.new(params[:<%= instance_name %>])

    respond_to do |format|
      if @<%= instance_name %>.save
        format.html { redirect_to @<%= instance_name %>, notice: t('app.msgs.success_created', obj: t('activerecord.models.<%= instance_name %>')) }
        format.json { render json: @<%= instance_name %>, status: :created, location: @<%= instance_name %> }
      else
        format.html { render action: "new" }
        format.json { render json: @<%= instance_name %>.errors, status: :unprocessable_entity }
      end
    end
  end
