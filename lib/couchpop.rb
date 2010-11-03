require 'couchrest'
class Couchpop
    
    attr_accessor :database_name, :app_name
    
    def initialize(database_name, app_name)
      self.database_name = database_name
      self.app_name = app_name
    end
    
    def server
      @server ||= CouchRest.new
    end
    
    def database
      @database ||= begin
        server.database!(database_name)
      end
    end
    
    def rock!

      server.database!(app_name)
      
      doc = begin
        database.get(app_name)
      rescue RestClient::ResourceNotFound
        CouchRest::Document.new({'_id' => app_name})
      end
      doc.database = database

      database.save_doc(doc)
      
      
      Dir['**/*.*'].each do |path|
        doc = database.get(app_name)
        mimetype = `file -Ib #{path}`.gsub(/\n/,"")
        puts "#{path}"
        `curl -s -X PUT http://localhost:5984/#{database_name}/#{app_name}/#{path}?rev=#{doc['_rev']} --data-binary @#{path} -H "Content-Type: #{mimetype}"`
      end
      puts "Success. App pushed to http://localhost:5984/#{database_name}/#{app_name}"
    end
end