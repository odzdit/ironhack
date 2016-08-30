class BidsController < ApplicationController


def create
	@user = User.find_by(params[:email])
	@product = Product.find(params[:id])
	@bid = @product.bids.new(user_id: @user.id, amount:params[:bid][:amount])
	@bids = @product.bids.all
	if @bid.save
			redirect_to user_product_path(@user.id, @product.id)
		else
			render 'products/show'

	end
end









# private
# def bid_params
# 	params.require(:bid).permit(:amount, :user_id)

# end







end
