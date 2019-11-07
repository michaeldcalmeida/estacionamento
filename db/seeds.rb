# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Diretoria.create( nome: 'Diretoria Presidência', descricao: 'Presidência da IMA', prioridade: 1 ) 
Diretoria.create( nome: 'Diretoria Administrativo-Financeiro', descricao: '', prioridade: 2, diretoria_id: 1 )
Diretoria.create( nome: 'Diretoria Técnica', descricao: '', prioridade: 2, diretoria_id: 1 )
Diretoria.create( nome: 'Diretoria Inovação', descricao: '', prioridade: 3, diretoria_id: 1 )

diretoria_tec = Diretoria.selec

Gerencia.create( nome: '', descricao: '', diretoria_id: 3)