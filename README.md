# Fluent::Plugin::D, a plugin for [Fluentd](http://fluentd.org)


Fluent plugin to send messages to ID


## Installation

`$ fluent-gem install fluent-plugin-d`

## Configuration

### Example

```
<source>
  @type tcp
  port 6514
  tag test.keep.free:
  <parse>
    @type "none"
  </parse>
</source>

<match test.keep.free:>
  @type devo
  host devo_endpoint
  port 443
  ca_cert /path/to/chain.crt
  client_cert /path/to/<domain>.crt
  client_key /path/to/<domain>.key
  verify_cert_name false

  <format>
      @type single_value
      message_key message
  </format>
</match>
```

### Parameters

#### host & port

to send data with fluent-plugin-d plugin, first choose the required endpoint depending on the region your are accessing from:

| Region 	| Endpoint                  	| Port 	|
|--------	|---------------------------	|------	|
| USA    	| us.elb.relay.logtrust.net 	| 443  	|
| Canada 	| ca.elb.relay.logtrust.net 	| 443  	|
| Europe 	| eu.elb.relay.logtrust.net 	| 443  	|
| VDC    	| es.elb.relay.logtrust.net 	| 443  	|

#### ca_cert, client_cert & client_key

You need use a three files (Cert, key and chain) to secure send data to Devo. 
Administrator users can find them in **Administration** → **Credentials**, in the X.509 tab. 

#### verify_cert_name
To enable (default) or disable cert name verification.

### Contact Us

You can contact with us at _support@devo.com_.

## License
MIT License

(C) 2021 JMC.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the 'Software'), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.