# load "#{Rails.root}/scripts/family_list.rb"

require 'roo'
require 'roo-xls'
require 'spreadsheet'

book = Roo::Spreadsheet.open('manolo_units.xlsx', extension: :xlsx)
rows = book.to_a
project = Project.create(name: 'La Higuera', account_id: 1)
rows.each_with_index do |row, i|