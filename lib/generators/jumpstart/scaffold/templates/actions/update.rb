  def update
    @<%= instance_name %> = <%= class_name %>.find(params[:id])

    respond_to do |format|
      if @<%= instance_name %>.update_attributes(params[:<%= instance_name %>])
        format.html { redirect_to @<%= instance_name %>, notice: t('app.msgs.success_updated', obj: t('activerecord.models.<%= instance_name %>')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @<%= instance_name %>.errors, status: :unprocessable_entity }
      end
    end
  end
