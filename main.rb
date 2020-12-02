#!/usr/bin/env ruby
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('./Gemfile', __dir__)

# Set up gems listed in the Gemfile.
require 'bundler/setup'
Bundler.require(:default)

# Paso #1: https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki
#
# Usar la gema bip_mnemonic para generar un set de palabras y un seed a partir de las 
# palabras. Imprimir el mnemonic y guardar el seed.
# 

puts 'PASO 1'

# Paso #2a: https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki
#
# Usar el seed generado anteriormente para inicializar un master node de money_tree.
# TIP: https://github.com/GemHQ/money-tree
#

puts 'PASO 2a'

# Paso #2b
#
# Generar una dirección bitcoin testnet a partir de la llave privada del master node.
# TIP: https://github.com/lian/bitcoin-ruby
# TIP: Usar Bitcoin::Key
#

puts 'PASO 2b'

# Paso #3: https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki
#
# Usar buscar un path de derivación que aplicado al master node nos genere un 'vanity address' a
# elección. (que parta con f00 por ejemplo)
#

puts 'PASO 3'

# Paso #4
#
# Usar bitcoin-ruby para enviar los bitcoins recibidos en el vanity address a 
# 2MsY7MxxU6p84MMhk6BgEim8moat8q6AvyP.
#
# Para esto hay que:
# * Buscar el output que queremos gastar en un explorador (hashe + indice)
# * Crear la transacción
# * Agregar el output a gastar como input
# * Agregar como output el address de destino
# * Firmandar el input
# * Codificar la tx en hexadecimal
# * Usar https://blockstream.info/testnet/tx/push para enviar la transacción a la red.
#

puts 'PASO 4'
