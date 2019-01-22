require 'spreadsheet'
require 'csv'

register_from_quickbooks = ARGV[0]

book = Spreadsheet.open register_from_quickbooks

output =CSV.generate do |csv|
  csv << ["Date","Payee","Category","Memo","Outflow","Inflow"]
  index = 0
  book.worksheet(0).each do |row|
    index += 1
    next if index < 2
    date = row[0]
    payee = row[2]
    category = ""
    memo = "#{row[9]} - #{row[3]}"
    outflow =  row[4]
    inflow = row[5]
    csv << [date, payee, category, memo, outflow, inflow]
  end
end

puts output