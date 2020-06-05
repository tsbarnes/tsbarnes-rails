desc "Import a JSON Resume file"
task :import_json, [:file] => [:environment] do |task, args|
  if args.file != nil
    print "JSON Resume Importer\n"
    print args.file
    print "\n"
    
    file = File.open(args.file)
    data = file.read

    resume = Resume.create_from_json!(data)

    print resume.name
    print "\n"
  else
    print "No file specified!\n"
    print "Usage:\n"
    print "\trake 'import_json[<filename>]'\n"
  end
end