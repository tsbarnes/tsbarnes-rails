desc "Import a JSON Resume file"
task :import_json, [:file] => [:environment] do |task, args|
  if args.file != nil
    print "JSON Resume Importer\n"
    print args.file
    print "\n"
    
    file = File.open(args.file)
    data = file.read
    json = JSON.parse(data)

    print json['basics']['name']
    print "\n"

    resume = Resume.create({
      name: json['basics']['name']
    })
  else
    print "No file specified!\n"
    print "Usage:\n"
    print "\trake 'import_json[<filename>]'\n"
  end
end