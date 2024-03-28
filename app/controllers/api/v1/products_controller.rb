module Api
  module V1
    class ProductsController < ApplicationController
      def index
        @products = Product.all
        render_json(@products)
      end

      def show
        render_json(@product)
      end

      def create
        @product = Product.new(product_params)

        if @product.save
          render_json(@product, :created)
        else
          render_errors(@product)
        end
      end

      def update
        if @product.save
          render_json(@product)
        else
          render_errors(@product)
        end
      end

      def destroy
        @product.destroy
        head :no_content
      end

      private

      def product_params
        params.require(:product).permit(
          :name, :description, :price,
          :stock, :brand, :supplier
        )
      end

      def set_product
        @product = Product.find(params[:id])
      end

      def render_json(data, status = :ok)
        render json: data, status: status
      end

      def render_errors(resource)
        render json: { errors: resource.errors }, status: :unprocessable_entity
      end
    end
  end
end