require 'rails_helper'

feature 'Todos' do

  after do
    Todo.destroy_all
  end

  scenario 'API returns list of todos at /todos' do
    todo1 = Todo.create!(
      :title => 'Learn Ember',
      :is_complete? => true)
    todo2 = Todo.create!(
      :title => 'Distill Knowledge',
      :is_complete? => false)
    todo2 = Todo.create!(
      :title => 'Instill Knowledge',
      :is_complete? => false)

    visit '/todos'
    expect(page).to have_content("Learn Ember")
    expect(page).to have_content("Distill Knowledge")
    expect(page).to have_content("Instill Knowledge")
  end
end
