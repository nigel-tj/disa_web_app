class DiseasesController < ApplicationController
  before_action :set_disease, only: [:show, :edit, :update, :destroy]

  # GET /diseases
  # GET /diseases.json
  def index
    @diseases = Disease.all
  end

  # GET /diseases/1
  # GET /diseases/1.json
  def show
  end

  # GET /diseases/new
  def new
    @disease = Disease.new
  end

  # GET /diseases/1/edit
  def edit
  end

  # GET /diseases/1/overall
  def overall
    @disease = Disease.find(params[:id])
    @name = @disease.name
    
    @female_data = Condition.where(gender: 'female', name: @name)
    @female_0_to_2 = Condition.where(gender: 'female', age: 0..2)
    @male_0_to_2 = Condition.where(gender: 'male', age: 0..2)
    @female_2_to_5 = Condition.where(gender: 'female', age:  2..5)
    @male_2_to_5  = Condition.where(gender: 'male', age:  2..5 )
    @female_5_to_9 = Condition.where(gender: 'female', age:  5..9)
    @male_5_to_9  = Condition.where(gender: 'male', age:  5..9 )
    @female_9_to_12 = Condition.where(gender: 'female', age:  9..12)
    @male_9_to_12  = Condition.where(gender: 'male', age:  9..12 )
    @female_12_to_15 = Condition.where(gender: 'female', age:  12..15)
    @male_12_to_15  = Condition.where(gender: 'male', age:  12..15 )
    
    @male_map = []
    Condition.where(disease_id: @disease.id ).each do | data|
      @male_map << [ data.comment, data.latitude, data.longitude ]
    end
    @start_of_month = Time.now.beginning_of_month
    @end_of_month = Time.now.end_of_month.day
    puts "HHHHHHHHHHHHHHH-- first day #{@start_of_month} days in the month " + @days_of_month.to_s
    @end_of_month.times do |i|
      @start_day = @start_of_month + 1.day
      @end_day = @start_day.end_of_day 
      puts "HHHHHHHHHH------------------ start day #{@start_day} ending #{@end_day} "
    end
  end

  # POST /diseases
  # POST /diseases.json
  def create
    @disease = Disease.new(disease_params)

    respond_to do |format|
      if @disease.save
        format.html { redirect_to @disease, notice: 'Disease was successfully created.' }
        format.json { render :show, status: :created, location: @disease }
      else
        format.html { render :new }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diseases/1
  # PATCH/PUT /diseases/1.json
  def update
    respond_to do |format|
      if @disease.update(disease_params)
        format.html { redirect_to @disease, notice: 'Disease was successfully updated.' }
        format.json { render :show, status: :ok, location: @disease }
      else
        format.html { render :edit }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diseases/1
  # DELETE /diseases/1.json
  def destroy
    @disease.destroy
    respond_to do |format|
      format.html { redirect_to diseases_url, notice: 'Disease was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease
      @disease = Disease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disease_params
      params.require(:disease).permit(:name, :disease_type, :disease_category)
    end
end
