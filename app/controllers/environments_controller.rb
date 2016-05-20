class EnvironmentsController < ApplicationController
  before_filter :authenticate_opensesame!

  # GET /environments
  # GET /environments.json
  def index
    if @environments.any?
      redirect_to @environments.first
    else
      redirect_to settings_path
    end
  end

  # GET /environments/1
  # GET /environments/1.json
  def show
    @environment = Environment.find(params[:id])
    @filters = Event.group(:event_type).count

    if params[:filter]
      @filter = params[:filter]
      @events = @environment.events.where(event_type: @filter).paginate(page: params[:page])
    else
      @events = @environment.events.paginate(page: params[:page])
    end

    render "events/index"
  end

  # GET /environments/new
  # GET /environments/new.json
  def new
    @environment = Environment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @environment }
    end
  end

  # GET /environments/1/edit
  def edit
    @environment = Environment.find(params[:id])
  end

  # POST /environments
  # POST /environments.json
  def create
    @environment = Environment.new(params[:environment])

    respond_to do |format|
      if @environment.save
        format.html { redirect_to @environment, notice: 'Environment was successfully created.' }
        format.json { render json: @environment, status: :created, location: @environment }
      else
        format.html { render action: "new" }
        format.json { render json: @environment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /environments/1
  # PUT /environments/1.json
  def update
    @environment = Environment.find(params[:id])

    respond_to do |format|
      if @environment.update_attributes(params[:environment])
        format.html { redirect_to @environment, notice: 'Environment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @environment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /environments/1
  # DELETE /environments/1.json
  def destroy
    @environment = Environment.find(params[:id])
    @environment.destroy

    respond_to do |format|
      format.html { redirect_to environments_url }
      format.json { head :no_content }
    end
  end
end
