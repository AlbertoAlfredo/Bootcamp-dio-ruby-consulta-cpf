require 'bundler/setup'
require 'cpf_cnpj'

puts "Digite o CPF para validação."
numero = gets.chomp.delete('^0-9')

cpf = CPF.new(numero)

if CPF.valid?(numero)
    puts "O cpf #{cpf.formatted} é válido"
else
    puts "O numero passado não é um cpf válido"
end