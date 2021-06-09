class CouponsController < ApplicationController
    before_action :find_coupon, only: [:show, :edit, :update, :destroy]


    def index
        @coupons = Coupon.all
        # render:index
    end

    def create
        coupon = Coupon.create(coupon_params)
        redirect_to coupon
    end

    def new
        @coupon = Coupon.new
    end

    def show
       
    end

    private

    def find_coupon
        @coupon = Coupon.find(params[:id])
    end

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

end
