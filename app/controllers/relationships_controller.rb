class RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.all
    render :index
  end

  def create
    @relationship = Relationship.create(follower_id: params[:follower_id], leader_id: params[:follower_id])
    render :show
  end

  def show
    @relationship = Relationship.find_by(id: params[:id])
    render :show
  end

  def destroy
    @relationship = Relationship.find_by(id: params[:id])
    @relationship.destroy
    render json: { message: "relationship destroyed successfully" }
  end
end
