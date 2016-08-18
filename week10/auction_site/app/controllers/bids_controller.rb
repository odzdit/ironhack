class BidsController < ApplicationController


def create
	@user = User.find_by(params[:email])
	@product = Product.find(params[:id])
	@bid = @product.bids.new(user_id: @user.id, amount:params[:bid][:amount])
	if @bid.save
			redirect_to user_products_path(@user)

	end
end









# private
# def bid_params
# 	params.require(:bid).permit(:amount, :user_id)

# end







end
