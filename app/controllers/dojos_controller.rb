class DojosController < ApplicationController
    def index
        @count = Dojo.count
        @dojo = Dojo.all
      end
      def new
      end
      def show
        @dojo = Dojo.find(params[:id])
        @students = Student.joins(:dojo).where("dojo_id = ?", params[:id])
      end
      def edit
        @dojo = Dojo.find(params[:id])
      end
      def destroy
        dojo = Dojo.find(params[:id])
        dojo.destroy
        redirect_to "/"
      end
      def create
        Dojo.successfully_created(params)
        redirect_to "/"
      end
      def back
        redirect_to "/"
      end
      def home
        redirect_to "/"
      end
      def update
        Dojo.successfully_updated(params)
        redirect_to "/"
      end
    end