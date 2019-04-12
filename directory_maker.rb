




def check_folder_name
	abort("1 dossier est égal à 1 seul nom sans espace ma poule") if ARGV.empty?
end

def get_folder_name
	return folder_name = ARGV.first
end

def create_folder(name)
	Dir.mkdir(name)
	Dir.chdir(name)
	#file = File.open("#{name}/Gemfile", "w+")
	file = File.open("Gemfile", "a")
	file.puts("gem 'pry'")
	file.puts("gem 'nokogiri'")
	file.puts("gem 'rubocop'")
	file.puts("gem 'rspec'")
	system("git init")
	system("touch .env")
	system("touch .gitignore")
	file = File.open(".gitignore", "a+")
	file.puts(".env")
	file = File.open("README.md", "a+")
	file.puts("ceci est un fichier ruby")
	system("mkdir lib")
	system("rspec --init")
end

check_folder_name
create_folder(get_folder_name)
