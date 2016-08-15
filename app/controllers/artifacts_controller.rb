class ArtifactsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_artifact_type
  before_action :set_artifact, only: [:show, :edit, :update, :destroy]


  # GET /artifacts
  # GET /artifacts.json
  def index
    # @artifacts = Artifact.all
    @artifacts = artifact_class.all
  end

  # GET /artifacts/1
  # GET /artifacts/1.json
  def show
  end

  # GET /artifacts/new
  def new
    @artifact = artifact_class.new
  end

  # GET /artifacts/1/edit
  def edit
  end

  # POST /artifacts
  # POST /artifacts.json
  def create
    @artifact = artifact_class.new(artifact_params)
    @artifact.user = current_user

    respond_to do |format|
      if @artifact.save
        format.html { redirect_to @artifact, notice: 'Artifact was successfully created.' }
        format.json { render :show, status: :created, location: @artifact }
      else
        format.html { render :new }
        format.json { render json: @artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artifacts/1
  # PATCH/PUT /artifacts/1.json
  def update
    respond_to do |format|
      if @artifact.update(artifact_params)
        format.html { redirect_to @artifact, notice: 'Artifact was successfully updated.' }
        format.json { render :show, status: :ok, location: @artifact }
      else
        format.html { render :edit }
        format.json { render json: @artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artifacts/1
  # DELETE /artifacts/1.json
  def destroy
    @artifact.destroy
    respond_to do |format|
      format.html { redirect_to artifacts_url, notice: 'Artifact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_artifact_type
      @type = artifact_type
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_artifact
      @type = artifact_type if @type.empty?
      @artifact = artifact_class.find(params[:id])
    end

    def artifact_type
      Artifact.types.include?(params[:type]) ? params[:type] : "Artifact"
    end

    def artifact_class
      @type.constantize
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artifact_params
      params.require(:artifact).permit(:user_id, :subject, :description, :type, :status)
    end
end
