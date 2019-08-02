class SamplesController<ApplicationController

def new
	@ins= Sample.new

end

def create
	@ins=Sample.new(sample_param)
	if @ins.save
		flash[:notice]="record is created successfully"
		redirect_to sample_path(@ins)
	else
		render 'new'
	end
end

def show
	@ins1=Sample.find(params[:id])
	
end


private

	def sample_param
		params.require(:sample).permit(:name, :description)
	end

end