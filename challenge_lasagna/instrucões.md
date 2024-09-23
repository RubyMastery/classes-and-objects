# Intruções
Neste exercício, você escreverá um código para ajudá-lo a preparar uma lasanha brilhante do seu livro de culinária favorito.

Você tem quatro tarefas, todas relacionadas ao tempo gasto no preparo da lasanha.

## Tarefa 1: Defina o tempo de forno

Defina a ``Lasagna::EXPECTED_MINUTES_IN_OVEN`` constante que retorna quantos minutos a lasanha deve ficar no forno. De acordo com o livro de receitas, o tempo de forno esperado em minutos é 40:
```ruby
Lasagna::EXPECTED_MINUTES_IN_OVEN
# => 40
```
## Tarefa 2: Calcule o tempo restante do forno em minutos
Defina o ``Lasagna#remaining_minutes_in_oven`` método que toma como parâmetro os minutos reais que a lasanha ficou no forno e retorna quantos minutos a lasanha ainda tem que permanecer no forno, com base no tempo de forno esperado em minutos da tarefa anterior.
```ruby
lasagna = Lasagna.new
lasagna.remaining_minutes_in_oven(30)
# => 10
```
## Tarefa 3: Calcule o tempo de preparação em minutos
Defina o ``Lasagna#preparation_time_in_minutes`` método que usa o número de camadas que você adicionou à lasanha como parâmetro e retorna quantos minutos você gastou preparando a lasanha, supondo que cada camada leve 2 minutos para ser preparada.
``` ruby
lasagna = Lasagna.new
lasagna.preparation_time_in_minutes(2)
# => 4
```
## Tarefa 4: Calcular o tempo total de trabalho em minutos
Defina o ``Lasagna#total_time_in_minutes`` método que recebe dois parâmetros nomeados: o number_of_layersparâmetro é o número de camadas que você adicionou à lasanha, e o actual_minutes_in_ovenparâmetro é o número de minutos que a lasanha ficou no forno. A função deve retornar quantos minutos no total você trabalhou cozinhando a lasanha, que é a soma do tempo de preparação em minutos, e o tempo em minutos que a lasanha passou no forno no momento.
```ruby
lasagna = Lasagna.new
lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)
# => 26
```