require 'erb'

lipsum_wanted = ARGV[0]

puts %{
  For your Ipsum, please select one of the following:
  1. Old-Fashioned Ipsum
  2. Cool Hipster Ipsum
  3. Dumb Ass Ipsum
}
print ">> "

lipsum_wanted = gets.chomp
lipsum_wanted = lipsum_wanted.to_i

puts %{
  How many paragraphs would you like?
}
print ">> "

lipsum_number = gets.chomp
if lipsum_number = 0 || nil
  lipsum_number = 1
end
lipsum_number = lipsum_number.to_i

if lipsum_wanted == 1
  lipsum_wanted = lipsum_wanted.to_s.downcase
  lipsum_wanted = "old_fashioned"
  title = "Old-Fashioned"
  content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." * lipsum_number
  name = "Old-Fashioned"
  new_file = File.open("./#{lipsum_wanted}.html", "w+")
  new_file << ERB.new(File.read("index.html.erb")).result(binding)
  new_file.close
elsif lipsum_wanted == 2
  lipsum_wanted = lipsum_wanted.to_s.downcase
  lipsum_wanted = "cool_hipster"
  title = "Cool Hipster"
  content = "Whatever semiotics listicle put a bird on it biodiesel. Aesthetic authentic kombucha disrupt. Flannel kickstarter kale chips scenester chartreuse occupy. Flannel art party ethical, hella bespoke retro affogato mumblecore dreamcatcher banjo actually locavore iPhone brunch 8-bit. Kickstarter celiac meditation, narwhal XOXO microdosing wolf etsy four dollar toast gluten-free marfa pinterest cornhole. Asymmetrical cardigan synth celiac, echo park chicharrones biodiesel master cleanse drinking vinegar man braid deep v you probably haven't heard of them blog distillery. Green juice mustache poutine knausgaard roof party before they sold out normcore, flexitarian cliche tacos man braid scenester wayfarers plaid man bun." * lipsum_number
  name = "Cool Hipster"
  new_file = File.open("./#{lipsum_wanted}.html", "w+")
  new_file << ERB.new(File.read("index.html.erb")).result(binding)
  new_file.close
elsif lipsum_wanted == 3
  lipsum_wanted = lipsum_wanted.to_s.downcase
  lipsum_wanted = "dumb_ass"
  title = "Dumb Ass"
  content = "Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass."
  name = "Dumb Ass" * lipsum_number
  new_file = File.open("./#{lipsum_wanted}.html", "w+")
  new_file << ERB.new(File.read("index.html.erb")).result(binding)
  new_file.close
else
  puts %{
    You have entered an invalid selection.
    Please rerun Ruby file and select:
    1. For Old-Fashioned Ipsum
    2. For Cool Hipster Ipsum
    3. For Dumb Ass Ipsum.
  }
end
