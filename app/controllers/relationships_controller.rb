class RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.all
    render :index
  end

  def create
    @relationship = Relationship.create(follower_id: params[:follower_id], leader_id: params[:follower_id])
    render :show
  end
end
