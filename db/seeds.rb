# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pacote.destroy_all
Vendedor.destroy_all
Cliente.destroy_all
Instalador.destroy_all
Fatura.destroy_all

pacotes = Pacote.create([{descricao: 'Pacote somente com internet', nome: 'pacote internet', valor: 50.0},
						{descricao: 'Pacote somente com TV a cabo', nome: 'pacote tv a cabo', valor: 50.0},
						{descricao: 'Pacote com internet e TV a cabo', nome: 'pacote combo', valor: 90.0}])

vendedores = Vendedor.create([{nome: 'Augusto', registro: 'a1'},
							{nome: 'Guilherme', registro: 'g2'},
							{nome: 'Eduardo', registro: 'e3'}])

clientes = Cliente.create([{cpf_cnpj: '9999999-99', data_nascimento: '12/12/1978', endereco: 'Rua das Pitangas, 66, Bairro Jaragua', nome: 'Jose da Silva', numero_inscricao: '12345', sexo: 'M', telefone: '33322456'},
							{cpf_cnpj: '8888888-88', data_nascimento: '25/08/1960', endereco: 'Avenida Amazonas, 567, Prado', nome: 'Milena Alves', numero_inscricao: '98765', sexo: 'F', telefone: '33339867'},
							{cpf_cnpj: '7777777-77', data_nascimento: '08/08/1970', endereco: 'Rua Direita, 1000, Centro', nome: 'Joao Pereira', numero_inscricao: '6666', sexo: 'M', telefone: '98700000'}])

instaladores = Instalador.create({nome: 'Joao teste', registro: '12345'})

faturas = Fatura.create([{cliente_id: 1, nome: 'Jose da Silva', numero_inscricao: '12345', data_vencimento: '14/12/2012', pacote_id: 1, valor: 50.00},
						{cliente_id: 2, nome: 'JMilena Alves', numero_inscricao: '98765', data_vencimento: '14/12/2012', pacote_id: 2, valor: 50.00},
						{cliente_id: 3, nome: 'Joao Pereira', numero_inscricao: '6666', data_vencimento: '14/12/2012', pacote_id: 3, valor: 90.00}])