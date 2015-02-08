class AuthSessionsController < ApplicationController
  # GET /auth_sessions
  # GET /auth_sessions.json
  def index
    @auth_sessions = AuthSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @auth_sessions }
    end
  end

  # GET /auth_sessions/1
  # GET /auth_sessions/1.json
  def show
    @auth_session = AuthSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @auth_session }
    end
  end

  # GET /auth_sessions/new
  # GET /auth_sessions/new.json
  def new
    @auth_session = AuthSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @auth_session }
    end
  end

  # GET /auth_sessions/1/edit
  def edit
    @auth_session = AuthSession.find(params[:id])
  end

  # POST /auth_sessions
  # POST /auth_sessions.json
  def create
    @auth_session = AuthSession.new(params[:auth_session])

    respond_to do |format|
      if @auth_session.save
        format.html { redirect_to @auth_session, notice: 'Auth session was successfully created.' }
        format.json { render json: @auth_session, status: :created, location: @auth_session }
      else
        format.html { render action: "new" }
        format.json { render json: @auth_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /auth_sessions/1
  # PUT /auth_sessions/1.json
  def update
    @auth_session = AuthSession.find(params[:id])

    respond_to do |format|
      if @auth_session.update_attributes(params[:auth_session])
        format.html { redirect_to @auth_session, notice: 'Auth session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @auth_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_sessions/1
  # DELETE /auth_sessions/1.json
  def destroy
    @auth_session = AuthSession.find(params[:id])
    @auth_session.destroy

    respond_to do |format|
      format.html { redirect_to auth_sessions_url }
      format.json { head :no_content }
    end
  end
end
