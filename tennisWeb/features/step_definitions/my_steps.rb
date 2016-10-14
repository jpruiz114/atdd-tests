Given(/^que abrí la aplicación$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

When(/^defina los nombres de los jugadores con "([^"]*)" y "([^"]*)"$/) do |jugador1, jugador2|
  fill_in("txt-jugador1", :with => jugador1)
  fill_in("txt-jugador2", :with => jugador2)
end

When(/^inice un juego$/) do
  click_button("iniciar")
end

Dado(/^que inicie un juego$/) do
  # La prueba debe ser independiente de otras

  # Abrir el home
  visit '/'

  # Llenar los campos con lo que sea
  fill_in("txt-jugador1", :with => "jugador1")
  fill_in("txt-jugador2", :with => "jugador2")

  # Oprimir el botón iniciar
  click_button("iniciar")
end

Entonces(/^el marcador debe ser "([^"]*)"$/) do |marcador|
	expect(find("#score").text).to match /#{marcador}/m
end

Cuando(/^el "([^"]*)" marca$/) do |jugador|
	click_button("marcar#{jugador}")
end
