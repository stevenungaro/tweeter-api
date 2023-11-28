class RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.all
    render :index
  end
end
