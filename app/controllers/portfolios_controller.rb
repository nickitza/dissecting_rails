class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
    end

    def show
        @portfolio_item = Portfolio.find(params[:id])
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)
        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to portfolios_path, notice: "Your portfolio entry was successfully saved."}
            else
                format.html { render :new, notice: "Error, entry was not saved."}
            end
        end
    end

    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end
    
    def update
        @portfolio_item = Portfolio.find(params[:id])
        respond_to do |format|
            if @portfolio_item.update(portfolio_params)
                format.html { redirect_to portfolios_path, notice: "Your portfolio entry was successfully updated."}
            else
                format.html { render :new, notice: "Error, entry was not updated."}
            end
        end
    end

    def destroy
        @portfolio_item = Portfolio.find(params[:id])
        @portfolio_item.destroy
        respond_to do |format|
                format.html { redirect_to portfolios_path, notice: "Your entry was deleted."}
        end
    end

    private
        def portfolio_params
            params.require(:portfolio).permit(:title, :subtitle, :body)
        end
end