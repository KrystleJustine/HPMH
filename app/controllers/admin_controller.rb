class AdminController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # GET /admin

  def index
    @admin = Admin.all
    render json: @admin
  end

  # GET /admin/1

  def show
  end

  # GET /admin/new
  def new
    @admin = Admin.new
    render json: @admin
  end

  # GET /admin/1/edit
  def edit
  end

  # POST /admin

  def create
    @admin = Admin.create(admin_params)
    if @admin.valid?
        @token = JWT.encode({admin_id: @admin.id}, 'password')
        render json: { admin: @admin, jwt:@token }, status: :created
    else
      render json: { error: 'failed to create user'}, status: :not_acceptable
    end
  #   if the user is valid a token is sent back
  end

  # PATCH/PUT /admin/1

  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin  was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:name, :location)
    end
end
