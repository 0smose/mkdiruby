require 'launchy'




def check_if_user_gave_input
	abort("il faut que tu rentres quelque chose") if ARGV.empty?
end

def get_search_name
	 search_name = ARGV
	 output = search_name.join("+")
	 return output
end

def search_gogole(name)
	Launchy.open("http://google.com/search?q=#{name}")
end


#https://www.google.com/search?q=
def perform
check_if_user_gave_input
search_gogole(get_search_name)
end

perform
