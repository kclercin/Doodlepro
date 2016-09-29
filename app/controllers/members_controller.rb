class MembersController < ApplicationController

  before_action :set_doodle

  def create
    @member = Member.new(member_params)
    @member.doodle = @doodle

    respond_to do |format|
      if @member.save
        format.html { redirect_to doodle_path(@doodle.token), notice: 'Doodle was successfully created.' }
        format.json { render :show, status: :created, location: @doodle }
        format.js {render layout: false}
      else
        format.html { render :new }
        format.json { render json: @doodle.errors, status: :unprocessable_entity }
        format.js {render layout: false}
      end
    end
  end

  private

  def member_params
    params.require(:member).permit(:name, dates: [])
  end

  def set_doodle
    @doodle = Doodle.find_by_token(params[:doodle_id])
  end

end
