require 'json'

module Swagger2md
  module Converter
    def self.to_markdown file_path
      docs_file = File.read(file_path)
      docs_hash = JSON.parse(docs_file)
      content = "#{docs_hash['info']['title']}\n"\
                "======\n"\
                "**Version:** #{docs_hash['info']['version']}\n\n"
      content << "**Description:** #{docs_hash['info']['description']}\n\n" if docs_hash['info']['description']

      docs_hash['paths'].each do |path, infor|
        content << "### #{path}\n\n"
        content << "---\n"
        infor.each do |method, doc|
          content << "##### ***#{method.upcase}***\n"

          request_info = doc['parameters'][0]
          if request_info
            content << "**Parameters**\n"
            if request_info['schema']
              definition_name = (request_info['schema']['$ref'] || request_info['schema']["items"]["$ref"]).split("/").last
              request_params = docs_hash['definitions'][definition_name]['properties']
              content << Swagger2md::Utils.wrap_into_block(JSON.pretty_generate(request_params))
            end
          end

          if doc['responses']
            content << "**Responses**\n"
            content << Swagger2md::Utils.wrap_into_block(JSON.pretty_generate(doc['responses']))
          end
        end
      end
      export(content)
    end

    def self.export(content, output='docs.md')
      File.open(output, 'w') do |file|
        file.write(content)
      end
    end
  end
end
