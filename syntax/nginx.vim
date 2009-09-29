" Vim syntax file
" Language:     Nginx configuration (nginx.conf)
" Maintainer:   Evan Miller
" Last Change:  2009 Sep 30
" Version:      0.2

if exists("b:current_syntax")
  finish
end

setlocal iskeyword+=.
setlocal iskeyword+=/
setlocal iskeyword+=:


" General
syn region ngxStartBlock start=+^+ end=+{+ contains=ngxBlockDirective,ngxContextVariable oneline
syn region ngxString start=+"+ end=+"+ skip=+\\\\\|\\"+ contains=ngxStringVariable oneline
syn region ngxString start=+'+ end=+'+ skip=+\\\\\|\\'+ contains=ngxStringVariable oneline
syn match ngxStringVariable "\$\w\w*" contained
syn match ngxContextVariable "\$\w\w*" contained
syn match ngxVariable "\$\w\w*"
syn match ngxComment " *#.*$"
syn keyword ngxOnOff on off

" Main
syn keyword ngxBlockDirective http events server contained
syn keyword ngxDirectiveImportant include
syn keyword ngxDirective daemon debug_points env error_log log_not_found lock_file master_process
syn keyword ngxDirective pid ssl_engine timer_resolution try_files user working_directory
syn keyword ngxDirective worker_cpu_affinity worker_priority worker_processes worker_rlimit_core worker_rlimit_nofile worker_rlimit_sigpending

" Events
syn keyword ngxDirective accept_mutex accept_mutex_delay debug_connection devpoll_changes devpoll_events epoll_events kqueue_changes kqueue_events
syn keyword ngxDirective multi_accept rtsig_signo rtsig_overflow_events rtsig_overflow_test rtsig_overflow_threshold use worker_connections

" HTTP core
syn keyword ngxBlockDirective location limit_except types contained
syn keyword ngxDirectiveImportant root server server_name listen internal
syn keyword ngxDirectiveError error_page
syn keyword ngxDirective alias client_body_in_file_only client_body_in_single_buffer client_body_buffer_size client_body_temp_path client_body_timeout
syn keyword ngxDirective client_header_buffer_size client_header_timeout client_max_body_size default_type directio if_modified_since
syn keyword ngxDirective keepalive_timeout keepalive_requests large_client_header_buffers limit_rate limit_rate_after log_not_found log_subrequest
syn keyword ngxDirective msie_padding msie_refresh open_file_cache open_file_cache_errors open_file_cache_min_uses open_file_cache_valid
syn keyword ngxDirective optimize_server_names port_in_redirect recursive_error_pages resolver resolver_timeout satisfy_any send_timeout sendfile
syn keyword ngxDirective server_name_in_redirect server_names_hash_max_size server_names_hash_bucket_size server_tokens tcp_nodelay tcp_nopush try_files


" HTTP Upstream
syn keyword ngxBlockDirective upstream contained
syn keyword ngxDirective ip_hash server

" HTTP Access
syn keyword ngxDirective allow deny

" HTTP Auth Basic
syn keyword ngxDirective auth_basic auth_basic_user_file

" HTTP Auto-index
syn keyword ngxDirective autoindex autoindex_exact_size autoindex_localtime

" Browser
syn keyword ngxDirective ancient_browser ancient_browser_value modern_browser modern_browser_value

" Charset
syn keyword ngxDirective charset charset_map override_charset source_charset

" Empty gif
syn keyword ngxDirective empty_gif

" FastCGI
syn keyword ngxDirective fastcgi_buffers fastcgi_buffer_size fastcgi_cache fastcgi_cache_key fastcgi_cache_methods fastcgi_cache_min_uses fastcgi_cache_path
syn keyword ngxDirective fastcgi_cache_use_stale fastcgi_cache_valid fastcgi_index fastcgi_hide_header fastcgi_ignore_client_abort fastcgi_intercept_errors
syn keyword ngxDirective fastcgi_max_temp_file_size fastcgi_param fastcgi_pass fastcgi_pass_header fastcgi_read_timeout fastcgi_redirect_errors
syn keyword ngxDirective fastcgi_split_path_info fastcgi_store fastcgi_store_access

" Geo
syn keyword ngxBlockDirective geo

" Gzip
syn keyword ngxDirective gzip gzip_buffers gzip_comp_level gzip_disable gzip_http_version gzip_min_length gzip_proxied gzip_types gzip_vary

" HTTP header
syn keyword ngxDirective add_header expires

" Index
syn keyword ngxDirective index

" HTTP referer
syn keyword ngxDirective valid_referers

" HTTP limit zone
syn keyword ngxDirective limit_zone limit_conn

" HTTP Limit Requests
syn keyword ngxDirective limit_req_zone limit_req

" Log
syn keyword ngxDirective access_log log_format log_format_combined open_log_file_cache

" Map
syn keyword ngxBlockDirective map contained
syn keyword ngxDirective map_hash_max_size map_hash_bucket_size

" Memcached
syn keyword ngxDirectiveImportant memcached_pass
syn keyword ngxDirective memcached_connect_timeout memcached_send_timeout memcached_read_timeout memcached_buffer_size memcached_next_upstream

" HTTP proxy
syn keyword ngxDirectiveImportant proxy_pass proxy_redirect
syn keyword ngxDirective proxy_buffer_size proxy_buffering proxy_buffers proxy_busy_buffers_size proxy_cache proxy_cache_path proxy_cache_methods
syn keyword ngxDirective proxy_cache_min_uses proxy_cache_valid proxy_cache_use_stale proxy_connect_timeout proxy_headers_hash_bucket_size proxy_headers_hash_max_size
syn keyword ngxDirective proxy_hide_header proxy_ignore_client_abort proxy_ignore_headers proxy_intercept_errors proxy_max_temp_file_size proxy_method
syn keyword ngxDirective proxy_next_upstream proxy_pass_header proxy_pass_request_body proxy_pass_request_headers proxy_read_timeout proxy_redirect_errors
syn keyword ngxDirective proxy_send_lowat proxy_send_timeout proxy_set_body proxy_set_header proxy_store proxy_store_access proxy_temp_file_write_size proxy_temp_path
syn keyword ngxDirective proxy_upstream_fail_timeout proxy_upstream_max_fails

" Rewrite
syn keyword ngxBlockDirective if contained
syn keyword ngxDirectiveControl break return rewrite set
syn keyword ngxDirective uninitialized_variable_warn

" SSI
syn keyword ngxDirective ssi ssi_silent_errors ssi_types ssi_value_length

" User ID
syn keyword ngxDirective userid userid_domain userid_expires userid_name userid_p3p userid_path userid_service


" HTTP addition
syn keyword ngxDirective add_before_body add_after_body

" Embedded Perl
syn keyword ngxDirective perl perl_modules perl_require perl_set

" FLV
syn keyword ngxDirective flv

" Gzip Precompression
syn keyword ngxDirective gzip_static

" Random Index
syn keyword ngxDirective random_index

" GeoIP
syn keyword ngxDirective geoip_country geoip_city

" RealIP
syn keyword ngxDirective set_real_ip_from real_ip_header

" SSL
syn keyword ngxDirectiveImportant ssl
syn keyword ngxDirective ssl_certificate ssl_certificate_key ssl_client_certificate ssl_dhparam ssl_ciphers ssl_crl ssl_prefer_server_ciphers ssl_protocols
syn keyword ngxDirective ssl_verify_client ssl_verify_depth ssl_session_cache ssl_session_timeout ssl_engine

" Stub Status
syn keyword ngxDirective stub_status

" Substitution
syn keyword ngxDirective sub_filter sub_filter_once sub_filter_types

" WebDAV
syn keyword ngxDirective dav_access dav_methods create_full_put_path

" Google Perftools
syn keyword ngxDirective google_perftools_profiles

" XSLT
syn keyword ngxDirective xslt_entities xslt_stylesheet xslt_types

" Secure Link
syn keyword ngxDirective secure_link_secret

" Image Filter
syn keyword ngxDirective image_filter image_filter_buffer image_filter_jpeg_quality image_filter_transparency


" Accept Language
syn keyword ngxDirective set_from_accept_language

" Access Key
syn keyword ngxDirective accesskey accesskey_arg accesskey_hashmethod accesskey_signature

" Auth PAM
syn keyword ngxDirective auth_pam auth_pam_service_name

" Circle GIF
syn keyword ngxDirective circle_gif circle_gif_min_radius circle_gif_max_radius circle_gif_step_radius

" EY Balancer
syn keyword ngxDirective max_connections

" Fancy Indexes
syn keyword ngxDirective fancyindex fancyindex_localtime fancyindex_exact_size fancyindex_header fancyindex_footer fancyindex_readme fancyindex_readme_mode

" GeoIP
syn keyword ngxDirective geoip_country_file

" HTTP Push
syn keyword ngxDirective push_sender push_listener push_queue_messages push_message_timeout push_buffer_size

" MogileFS
syn keyword ngxDirective mogilefs_pass mogilefs_methods mogilefs_domain mogilefs_tracker mogilefs_noverify mogilefs_connect_timeout mogilefs_send_timeout mogilefs_read_timeout

" MP4 Streaming Lite
syn keyword ngxDirective mp4

" Notice
syn keyword ngxDirective notice notice_type

" RRD graph
syn keyword ngxDirective rrd_graph rrd_graph_root

" Strip
syn keyword ngxDirective strip

" Upload
syn keyword ngxDirective upload_pass upload_store upload_store_access upload_set_form_field upload_aggregate_form_field upload_pass_form_field upload_cleanup
syn keyword ngxDirective upload_buffer_size upload_max_part_header_len upload_max_file_size upload_limit_rate upload_max_output_body_len upload_pass_args

" Upload Progress
syn keyword ngxDirective upload_progress track_uploads report_uploads

" Upstream Fair Balancer
syn keyword ngxDirective fair upstream_fair_shm_size

" Upstream Hash
syn keyword ngxDirective hash hash_again

" Secure Download
syn keyword ngxDirective secure_download secure_download_secret secure_download_path_mode secure_download_fail_location

" Upstream consistent hash
syn keyword ngxDirective consistent_hash


" Passenger
syn keyword ngxDirective passenger_root passenger_log_level passenger_ruby passenger_use_global_queue passenger_user_switching passenger_default_user
syn keyword ngxDirective passenger_enabled passenger_base_uri passenger_max_pool_size passenger_max_instances_per_app passenger_pool_idle_time
syn keyword ngxDirective rails_env rails_spawn_method rails_framework_spawner_idle_time rails_app_spawner_idle_time rack_env


hi link ngxStartBlock Normal
hi link ngxString String
hi link ngxStringVariable Special
hi link ngxContextVariable Identifier
hi link ngxVariable Identifier
hi link ngxComment Comment
hi link ngxOnOff Boolean
hi link ngxBlockDirective Statement
hi link ngxDirectiveImportant Type
hi link ngxDirectiveError Constant
hi link ngxDirectiveControl Keyword
hi link ngxDirective Identifier


let b:current_syntax = "nginx"

