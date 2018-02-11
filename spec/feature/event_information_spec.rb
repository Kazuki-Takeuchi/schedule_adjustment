require 'rails_helper'

feature 'ログインとログアウト' do
  background do
    # ユーザを作成する
    User.create!(name: 'foo', email: 'foo@example.com', password: '123456')
  end
  scenario 'ログインする' do
    # トップページを開く
    visit root_path
    click_on 'ログイン'
    # ログインフォームにEmailとパスワードを入力する
    fill_in 'Email', with: 'foo@example.com'
    fill_in 'Password', with: '123456'
    # ログインボタンをクリックする
    click_on 'Log in'
    # ログインに成功したことを検証する
    expect(page).to have_content 'ログインしました'
  end
end