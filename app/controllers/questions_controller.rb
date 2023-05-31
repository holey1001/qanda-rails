class QuestionsController < ApplicationController
  # 質問の一覧表示
  def index
  end

  # 質問の詳細ページ表示
  def show
    # p params[:id]
    @question = Question.find(params[:id])
    # p @question
  end
  
  # 質問の作成
  def new
    @question = Question.new
  end
  
  # 質問の登録
  def create
    # p question_params  # pメソッドで標準出力ができる
    
    # Questionモデルを初期化
    @question = Question.new(question_params)
    
    # QuestionモデルをDBに保存
    @question.save
    
    # showへリダイレクト
    redirect_to @question  # ここでパスを指定しなくてもrailsがよしなにやってくれる
    
  end
  
  # 質問の編集
  def edit
  end
  
  # 質問の更新
  def update
  end
  
  # 質問の削除
  def destoroy
  end
  
  private
  # ストロングパラメータの設定で、意図していないカラムの更新が来ても無視してくれる
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end
end
