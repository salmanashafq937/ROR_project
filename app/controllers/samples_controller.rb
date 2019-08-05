class SamplesController<ApplicationController
before_action :set_isntance, only: [:show, :edit, :update, :destroy]
#new
def new
	@ins= Sample.new

end


#create Action
def create
	@ins=Sample.new(sample_param)
	if @ins.save
		flash[:notice]="record is created successfully"
		redirect_to sample_path(@ins)
	else
		render 'new'
	end
end



#show Action
def show
	#@ins=Sample.find(params[:id])	
end



#edit Action
def edit
	#@ins=Sample.find(params[:id])
end



#update Action
def update
	#@ins=Sample.find(params[:id])
	if @ins.update(sample_param)
		flash[:notice]="Record has updated successfully"
		redirect_to sample_path(@ins)
	else
		render 'edit'
	end
end



#index Action
def index
	@samples=Sample.all

	
end

#delete Action
def destroy
	#@ins=Sample.find(params[:id])
	@ins.destroy
	flash[:notice]="Record is deleted successfully"
	redirect_to samples_path

	
end

#other private metods/actions
private

def set_isntance
 	@ins=Sample.find(params[:id])
 end

def sample_param
	params.require(:sample).permit(:name, :description)
end

end