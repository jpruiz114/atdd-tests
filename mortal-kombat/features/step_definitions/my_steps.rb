Given(/^que abrí el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

Given(/^seleccioné start$/) do
  click_button("iniciar")
end

When(/^veo "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

Given(/^que veo "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

When(/^selecciono "([^"]*)"$/) do |arg1|
  click_button("Kombat!")
end

Then(/^debo ver la vida "([^"]*)" y "([^"]*)"$/) do |personaje, oponente|
  expect(find("#vida-personaje").text).to match /#{personaje}/m
  expect(find("#vida-oponente").text).to match /#{oponente}/m
end

Then(/^debo ver el panel de golpes de "([^"]*)" con "([^"]*)"$/) do |peleador, golpe|
  expect(find("#panel-golpes-#{peleador}").text).to match /#{peleador}/m
  expect(find("#golpe-alto-#{peleador}").text).to match /#{golpe}/m
end

When(/^selecciono golpe alto de personaje$/) do
  click_button("#golpe-alto-personaje")
end

Then(/^la vida de oponente debe ser "([^"]*)"$/) do |oponente|
  expect(find("#vida-oponente").text).to match /#{oponente}/m
end

When(/^debo ver la vida "([^"]*)"$/) do |oponente|
  expect(find("#vida-oponente").text).to match /#{oponente}/m
end
