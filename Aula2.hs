module Aula2 where
data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving (Enum, Ord, Eq, Show)

--Pattern Matching

agenda :: Dia -> String
agenda Segunda = "Comprar Erva"
agenda Quarta = "Jogo do Timao"
agenda Sexta = "Soh Toguro"
agenda Sabado = "FFXV"
agenda _ = "No one cares"

--Função parcial: usado em caso de pattern matching nao tratados

toDia :: Int -> Either String Dia
toDia 1 = Right Domingo
toDia 2 = Right Segunda
toDia 3 = Right Terca
toDia 4 = Right Quarta
toDia 5 = Right Quinta
toDia 6 = Right Sexta
toDia 7 = Right Sabado
toDia _ = Left "Dia Errado"

data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday deriving (Enum, Ord, Eq, Show)


traduzir :: Dia -> Day
traduzir Domingo = Sunday
traduzir Segunda = Monday
traduzir Terca = Tuesday
traduzir Quarta = Wednesday
traduzir Quinta = Thursday
traduzir Sexta = Friday
traduzir Sabado = Saturday

--RECORD SYNTAX = ATO DE NOMEAR OS CAMPOS
data Pessoa = Pessoa {
	pessoaNome :: String,
	pessoaIdade :: Int
	} deriving Show
--data Status = Vivo | Morto deriving Show

fazerAniversario :: Pessoa -> Pessoa
fazerAniversario (Pessoa nome idade) = Pessoa nome (idade + 1) 

fazAniversario :: Pessoa -> Pessoa
fazAniversario x = Pessoa (pessoaNome x) (1+pessoaIdade x)
--fazerAniversario (Pessoa nome idade Morto) = Pessoa nome (idade + 1) Morto 
