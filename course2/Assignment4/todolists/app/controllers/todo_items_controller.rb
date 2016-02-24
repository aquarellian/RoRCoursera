class TodoItemsController < ApplicationController
  before_action :set_todo_list
  # before_action :set_todo_item, only: [:update, :show, :edit, :destroy]

   # GET /todo_items/new
  def new
    @todo_item = @todo_list.todo_items.new
  end

   # GET /todo_items/new
  def edit
    @todo_item = @todo_list.todo_items.find(params[:id])
  end

  # POST /todo_items
  # POST /todo_items.json
  def create
    @todo_item = @todo_list.todo_items.new(todo_item_params)

    if @todo_item.save
      redirect_to @todo_list, notice: 'Todo item was successfully created.'
    else
      redirect_to @todo_list, alert: 'Unable to create a todo item!'
    end
    
  end

    # GET /todo_items/1
  # GET /todo_items/1.json
  def show
    @todo_item = @todo_list.todo_items.find(params[:id])
  end

  # PATCH/PUT /todo_lists/1
  # PATCH/PUT /todo_lists/1.json
  def update
    @todo_item = @todo_list.todo_items.find(params[:id])
    if @todo_item.update(todo_item_params)
      redirect_to @todo_list, notice: 'Todo item was successfully updated'
    else
      redirect_to @todo_list, alert: 'Unable to update a todo item!'
    end
  end

  # DELETE /todo_items/1
  # DELETE /todo_items/1.json
  def destroy
    @todo_item = @todo_list.todo_items.find(params[:id])
    @todo_item.destroy
    redirect_to @todo_list, notice: 'Todo Item deleted'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_item 
      @todo_list.todo_items.find(:id)
    end

     def set_todo_list
      @todo_list = TodoList.find(params[:todo_list_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_item_params
      params.require(:todo_item).permit(:due_date, :title, :description, :completed, :todo_list_id)
    end
end
