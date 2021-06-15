# Copyright 2016 Acquia, Inc.
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

require_relative 'lookup_from_const'

module SyslogTls
  module Facility
    extend LookupFromConst
    KERN     =  0
    USER     =  1
    MAIL     =  2
    DAEMON   =  3
    AUTH     =  4
    SYSLOG   =  5
    LPR      =  6
    NEWS     =  7
    UUCP     =  8
    CRON     =  9
    AUTHPRIV = 10
    FTP      = 11
    NTP      = 12
    SECURITY = 13
    CONSOLE  = 14
    RAS      = 15
    LOCAL0   = 16
    LOCAL1   = 17
    LOCAL2   = 18
    LOCAL3   = 19
    LOCAL4   = 20
    LOCAL5   = 21
    LOCAL6   = 22
    LOCAL7   = 23
    NONE     = SYSLOG
  end
end
