# Copyright 2016 Acquia, Inc.
# Copyright 2016 t.e.morgan.
# Copyright 2021 D.Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require_relative 'protocol'
require_relative 'ssl_transport'

module SyslogTls
  class Logger
    attr_reader :token
    attr_accessor :transport

    # Logger accepts transport which should implement IO methods
    # close, closed? and write
    def initialize(transport, token=nil)
      @transport = transport
      @default_header = SyslogTls::Header.new
      @default_structured_data = SyslogTls::StructuredData.new(token)
    end

    # Sets default facility for each message
    def facility(val)
      @default_header.facility = val
    end

    # Sets default hostname for each message
    def hostname(val)
      @default_header.hostname = val
    end

    # Sets default app_name for each message
    def app_name(val)
      @default_header.app_name = val
    end

    # Sets default procid for message
    def procid(val)
      @default_header.procid = val
    end

    # Check if IO is closed
    def closed?
      transport && transport.closed?
    end

    def close
      transport.close
    end

    # Send log message with severity to syslog
    def log(severity, message, time: nil)
      time ||= Time.now

      m = SyslogTls::Message.new

      # Include authentication header
      m.structured_data << @default_structured_data

      # Adjust header with current timestamp and severity
      m.header = @default_header.dup
      m.header.severity = severity
      m.header.timestamp = time

      yield m.header if block_given?

      m.msg = message

      transport.write(m.to_s)
    end
  end
end
