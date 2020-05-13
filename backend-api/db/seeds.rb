# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Graph.destroy_all
Note.destroy_all

puts "Entering data into the MATRIX !!!"

graph1 = {
    name: "National Syndromic Surveillance Program (NSSP): Emergency Department Visits Percentage of Visits for COVID-19-Like Illness  September 29, 2019 - April 4, 2020 Data as of April 9, 2020",
    info_url: "https://www.cdc.gov/coronavirus/2019-ncov/covid-data/covidview/04102020/nssp-regions.html",
    screenshot_url: "https://www.cdc.gov/coronavirus/2019-ncov/covid-data/covidview/04102020/covid-like-illness.png"
}

graph1 = Graph.create(graph1)


note1 = Note.create(content: "These COVID19 like symptoms appear to be very similar to the influenza.", graph_id: 1)


question1 = Question.create(content: "Is the spike in cases related to temperature when referring to COVID19 ?", graph_id: 1)

