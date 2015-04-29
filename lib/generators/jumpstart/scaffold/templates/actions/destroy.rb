  def destroy
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    @<%= instance_name %>.destroy
    redirect_to <%= items_url %>, :notice => t('app.msgs.success_destroyed', obj: t('activerecord.models.<%= instance_name %>'))
  end
