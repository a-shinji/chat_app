class TodosController < ApplicationController
    def index
        @todos = Todo.all
    end

    def create
        todo = Todo.new(text: params[:text])
        todo.save

        redirect_to action: :index
    end

    def destroy
        todo = Todo.find(params[:id])
        todo.destroy

        redirect_to action: :index
    end
end
