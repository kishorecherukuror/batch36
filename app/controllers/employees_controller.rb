class EmployeesController < ApplicationController
  def new
    if params.present?
      @emp = Employee.new(name: params[:name], :age => params[:age])
      @emp.save
    end
  end

  def create
    @emp = Employee.new(name: params[:name], :age => params[:age])
    @emp.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def list
  end
end
