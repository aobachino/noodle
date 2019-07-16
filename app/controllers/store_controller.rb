class StoreController < ApplicationController
  def search
  	# パラメーター取得
	index1 = params[:word]
    p index1
	# 全件orキー分岐
	if index1 != ""
		# キーワード検索
		stores = Store.ransack(name_matches: "%#{index1}%").result
		if stores.empty?
			@message = '検索結果は0件です'
		else
			@stores = stores
		end
	else
		p '全件'
		# 全件検索
		@stores = Store.all

	end
  end

  def detailSerch

  	@q = Store.search(params[:q])
  	p @q
  	stores = @q.result(distinct: true)
  	render :partial => "search"
  	# , :collections => @stores, locals: { stores: @stores }

  end
end