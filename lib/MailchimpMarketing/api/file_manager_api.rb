=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.28
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class FileManagerApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # Delete file
    def delete_file(file_id, opts = {})
      fail ArgumentError, "Missing required param: 'file_id'" if file_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/file-manager/files/{file_id}'.sub('{' + 'file_id' + '}', file_id.to_s)
      data = @api_client.call_api(:DELETE, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Delete folder
    def delete_folder(folder_id, opts = {})
      fail ArgumentError, "Missing required param: 'folder_id'" if folder_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/file-manager/folders/{folder_id}'.sub('{' + 'folder_id' + '}', folder_id.to_s)
      data = @api_client.call_api(:DELETE, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List stored files
    def files(opts = {})
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000
      fail ArgumentError, 'invalid value for "sort_field", must be one of added_date' if opts[:'sort_field'] && !['added_date'].include?(opts[:'sort_field'])
      fail ArgumentError, 'invalid value for "sort_dir", must be one of ASC, DESC' if opts[:'sort_dir'] && !['ASC', 'DESC'].include?(opts[:'sort_dir'])

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'created_by'] = opts[:'created_by'] if !opts[:'created_by'].nil?
      query_params[:'before_created_at'] = opts[:'before_created_at'] if !opts[:'before_created_at'].nil?
      query_params[:'since_created_at'] = opts[:'since_created_at'] if !opts[:'since_created_at'].nil?
      query_params[:'sort_field'] = opts[:'sort_field'] if !opts[:'sort_field'].nil?
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      post_body = nil

      local_var_path = '/file-manager/files'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get file
    def get_file(file_id, opts = {})
      fail ArgumentError, "Missing required param: 'file_id'" if file_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/file-manager/files/{file_id}'.sub('{' + 'file_id' + '}', file_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List folders
    def list_folders(opts = {})
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'created_by'] = opts[:'created_by'] if !opts[:'created_by'].nil?
      query_params[:'before_created_at'] = opts[:'before_created_at'] if !opts[:'before_created_at'].nil?
      query_params[:'since_created_at'] = opts[:'since_created_at'] if !opts[:'since_created_at'].nil?
      post_body = nil

      local_var_path = '/file-manager/folders'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get folder
    def get_folder(folder_id, opts = {})
      fail ArgumentError, "Missing required param: 'folder_id'" if folder_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/file-manager/folders/{folder_id}'.sub('{' + 'folder_id' + '}', folder_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Update file
    def update_file(file_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'file_id'" if file_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/file-manager/files/{file_id}'.sub('{' + 'file_id' + '}', file_id.to_s)
      data = @api_client.call_api(:PATCH, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Update folder
    def update_folder(folder_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'folder_id'" if folder_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/file-manager/folders/{folder_id}'.sub('{' + 'folder_id' + '}', folder_id.to_s)
      data = @api_client.call_api(:PATCH, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add file
    def upload(body, opts = {})
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/file-manager/files'
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add folder
    def create_folder(body, opts = {})
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/file-manager/folders'
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end
