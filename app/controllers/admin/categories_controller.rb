class Admin::CategoriesController < Admin::ApplicationController

	def index
		
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)

		if @category.save
			flash[:notice] = "Category was created succesfully!"
			redirect_to admin_categories_path
		else
			flash.now[:alert] = "Category was not created!"
			render "new"
		end
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end



	private
		def category_params
			params.require(:category).permit(:name, :summary)
		end
end
