#### 2.0.0

* Require Ruby 2.4
* Support SNI and enable cert name verification by default. **This changes the default behavior** and may cause issues if the remote server's cert does not match the configured hostname.
* Add `verify_cert_name` to enable (default) or disable cert name verification.
  Note: `ca_cert` verifies the certificate signing chain. `verify_cert_name` verifies the CN/SAN name on the cert.


#### 1.2.1

* Support Fluentd 1.0 (same API as 0.14).


#### 1.2.0

* Improve compliance with Fluentd 0.14 API.
* Eliminate excess Message#header object creation.


#### 1.1.0

* Renamed `cert` and `key` to `client_cert` and `client_key` respectively.
* Change to short timeouts on network calls so logging doesn't go dead for extended periods.
* Added `idle_timeout` to force upstream reconnection after a period of time with no traffic for a particular tag. Useful for low-traffic senders. Not recommended for high-traffic.
* Added `ca_cert` to validate the remote certificate. Defaults to 'system' which uses the system certificate store.


#### 1.0.0

* Standard fluent formatting plugins are supported. Json output remains the default.
* `token` (Structured Data in syslog terms) is now optional, for syslog hosts that don't require it.
* Message payload in the syslog packet no longer duplicates Time or includes Tag by default.
* Requires Fluent 0.14.


#### 0.5.0

Comparable to v1.0.0, but compatible with Fluent 0.12.


#### < 0.2.0

From [Fluent::Plugin::SumologicCloudSyslog](https://github.com/acquia/fluent-plugin-sumologic-cloud-syslog)
