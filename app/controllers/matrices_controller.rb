class MatricesController < ApplicationController
  def index
    @matrix = Matrix.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    @matrix = Matrix.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def new
    @matrix = Matrix.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def edit
    @matrix = Matrix.find(params[:id])
  end

  def create
    @matrix = Matrix.new(params[:matrix])

    respond_to do |format|
      if @matrix.save
        format.html { redirect_to @matrix, notice: 'Matrix was successfully created.' }
        format.json { render json: @matrix, status: :created, location: @matrix }
      else
        format.html { render action: "new" }
        format.json { render json: @matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @matrix = Matrix.find(params[:id])

    respond_to do |format|
      if @matrix.update_attributes(params[:matrix])
        format.html { redirect_to @matrix, notice: 'Matrix was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @matrix = Matrix.find(params[:id])
    @matrix.destroy

    respond_to do |format|
      format.html { redirect_to matrices_url }
      format.json { head :ok }
    end
  end
end

