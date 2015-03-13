class RulesController < ApplicationController
  skip_before_action :require_user, only: [:index, :show]

  def index
    @rules = Rule.all
  end

  def show
    @rule = Rule.find_by(id: params[:id])
    @rules = Rule.all
  end

  def new
    @rule = Rule.new
    @rules = Rule.all
  end

  def create
    rule_params = params.require(:rule).permit(:rule_name, :rule_description)
    Rule.create(rule_params)
    redirect_to rules_path
  end

  def edit
    @rule = Rule.find_by(id: params[:id])
    @rules = Rule.all
  end

  def update
    @rule = Rule.find_by(id: params[:id])
    rule_params = params.require(:rule).permit(:rule_name, :rule_description)
    @rule.update(rule_params)
    redirect_to rules_path
  end

  def destroy
    @rule = Rule.find_by(id: params[:id])
    @rule.destroy
    redirect_to rules_path
  end

end