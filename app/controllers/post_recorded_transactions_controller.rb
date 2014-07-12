class PostRecordedTransactionsController < ApplicationController
  before_action :set_post_recorded_transaction, only: [:show, :edit, :update, :destroy]

  # GET /post_recorded_transactions
  # GET /post_recorded_transactions.json
  def index
    @post_recorded_transactions = PostRecordedTransaction.all
  end

  # GET /post_recorded_transactions/1
  # GET /post_recorded_transactions/1.json
  def show
  end

  # GET /post_recorded_transactions/new
  def new
    @post_recorded_transaction = PostRecordedTransaction.new
  end

  # GET /post_recorded_transactions/1/edit
  def edit
  end

  # POST /post_recorded_transactions
  # POST /post_recorded_transactions.json
  def create
    @post_recorded_transaction = PostRecordedTransaction.new(post_recorded_transaction_params)

    respond_to do |format|
      if @post_recorded_transaction.save
        format.html { redirect_to @post_recorded_transaction, notice: 'Post recorded transaction was successfully created.' }
        format.json { render :show, status: :created, location: @post_recorded_transaction }
      else
        format.html { render :new }
        format.json { render json: @post_recorded_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_recorded_transactions/1
  # PATCH/PUT /post_recorded_transactions/1.json
  def update
    respond_to do |format|
      if @post_recorded_transaction.update(post_recorded_transaction_params)
        format.html { redirect_to @post_recorded_transaction, notice: 'Post recorded transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_recorded_transaction }
      else
        format.html { render :edit }
        format.json { render json: @post_recorded_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_recorded_transactions/1
  # DELETE /post_recorded_transactions/1.json
  def destroy
    @post_recorded_transaction.destroy
    respond_to do |format|
      format.html { redirect_to post_recorded_transactions_url, notice: 'Post recorded transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_recorded_transaction
      @post_recorded_transaction = PostRecordedTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_recorded_transaction_params
      params.require(:post_recorded_transaction).permit(:label, :default_amount, :commentary, :category_id, :type, :start_date, :end_date, :day, :to_validate, :account_id)
    end
end
