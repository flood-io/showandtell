$background:images/turbo.jpeg$

<div style="border-radius: 10px;background-color: rgba(0, 0, 0, 0.8); color: #fff; padding: 50px;">

## Estimating throughput

We can start to validate business targets of 1M rps 😲

<pre>
  60,000,000 requests per minute
  ------------------------------  = 4,000 rpm per user
        15,000 users

            OR maybe ...

  60,000,000 requests per minute
  ------------------------------  = 1.8M concurrent users
        33 rpm per user
</pre>
