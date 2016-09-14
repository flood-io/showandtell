## Ruby-JMeter

<pre><code class="ruby">
require 'ruby-jmeter'

test do
  defaults  domain: 'flooded.io', port: 443, protocol: 'https'

  with_user_agent :iphone

  header [
    { name: 'Accept', value: 'application/json' }
  ]

  threads count: 100 do

    random_timer 100, 200

    get name: 'entry point', url: '/v2', sample: 10 do
      assert json: '.status', value: 'OK'
    end

    post name: 'create session', url: '/v2/oauth', sample: 10,
      fill_in: {
        username: 'Michel Rosen',
        password: 4141414141
      } do
        extract json: '.access_token', name: 'access_token'
      with_xhr
    end
  end
end.jmx
</code></pre>