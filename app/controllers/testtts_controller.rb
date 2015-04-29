class TestttsController < ApplicationController
  def index
    @testtts = Testtt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testtts }
    end
  end

  def show
    @testtt = Testtt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testtt }
    end
  end

  def new
    @testtt = Testtt.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testtt }
    end
  end

  def create
    @testtt = Testtt.new(params[:testtt])

    respond_to do |format|
      if @testtt.save
        format.html { redirect_to @testtt, notice: t('app.msgs.success_created', obj: t('activerecord.models.testtt')) }
        format.json { render json: @testtt, status: :created, location: @testtt }
      else
        format.html { render action: "new" }
        format.json { render json: @testtt.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @testtt = Testtt.find(params[:id])
  end

  def update
    @testtt = Testtt.find(params[:id])

    respond_to do |format|
      if @testtt.update_attributes(params[:testtt])
        format.html { redirect_to @testtt, notice: t('app.msgs.success_updated', obj: t('activerecord.models.testtt')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testtt.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @testtt = Testtt.find(params[:id])
    @testtt.destroy
    redirect_to testtts_url, :notice => t('app.msgs.success_destroyed', obj: t('activerecord.models.testtt'))
  end
end
