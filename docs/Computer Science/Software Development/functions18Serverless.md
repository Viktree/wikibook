# Function18 Conference

## History of serverless

Speaker: Keith Horwood (CEO of Stdlib)

-   LAMP stack was how most people got started in Web programming
-   FB used php extensively
-   One script, one end-point
-   This was not very scalable
-   DHH launched rails -> Twitter used rails extensively
-   AWS in 2006 for virtualization to increase scalability
-   Shift from IT personal to DevOps (infrastructure and hardware)
-   DevOps problem was solved by heroku - 2007
-   Docker inn 2013 Kuberneties 2014

What is serverless?

-   roll up two decades of infrastructure abstraction and utilize economies of scale to provide instant on-demand computation
-   Single function, single endpoint
-   Business need really quickly

Serverless is used for:

-   Backend APIs,
-   Data processing
-   Integrating 3rd parties
-   IoT

Server- less big three: GCP, Azure, AWS
Server-less Vendors: Twilio, Standard Library, PubNub

Serverless is a transient name. It will probably change

## Achieving vendor choice in a server-less world

Speaker:

-   Server-less reduces time to market
-   Efficiency in pricing
-   Server-less causes vendor lock-in -> Take the right tool for the job
-   Data lock-in is what will fix you to a certain service
-   Nordstrom: look up event router. Have your logs and then query the logs. Reminds me of streams

## When Serverless Gets In the Way of Scalability

Speakers: Lily Li & Christian Zommerfelds

-   Serverless will scale machines over time; allows devs / engineers to focus on business logic
-   Make a shitty software called D2L
-   Overestimate and underestimation are dangerous pitfalls that developers face.  Overestimation = high costs, underestimation = fires
-   A scalable and resilient system must be horizontally scalable, cost efficient; resilient to traffic spikes and partial system failure; and low latency when the system scales
-   Rate limiting saves on cash; rate limiting assumes a standard rate of request
-   By applying max concurrency formulas Lily and Christian were able to reduce high traffic latency issues
-   Fixed concurrency limit problems has an issue if you have multiple systems tied to the same database
-   TCP solves the multiple system problem - carefully probes the system and adjusts the concurrency limit based on usage.

Netflix applied TCP solutions and generated their own algorithm

-   `limit = limit * latencyNoLoad/latencyActual + sqrt(limit)`
-   <https://github.com/Netflix/concurrency-limits>
-   <https://medium.com/@NetflixTechBlog/performance-under-load-3e6fa9a60581>
-   Concurrency limit is better than rate limiting
-   Consider using dynamic concurrency limits

Little's Law

-   `rate limit * latency = number of concurrent requests`
-   `n = r * t`

## Innovating with confidence: FaaS at Netflix

Speaker: William Blankenship

Introducing the platform:

1.  Metrics
2.  Logging
3.  Tracing

Newt - A tool to setup all the infrastructure that SRE people want

Strangler Pattern - slowly migrate between two different APIs

Is there a way that we can get field by field information?

Automatically change the amount of traffic based on where there is a problem -> reduce the blast radius

 Pioneering Tax, Blast Radius

> "The most important reason to consider a strangler application over a cut-over rewrite is reduced risk. A strangler can give value steadily and the frequent releases allow you to monitor its progress more carefully. Many people still don't consider a strangler since they think it will cost more - I'm not convinced about that. Since you can use shorter release cycles with a strangler you can avoid a lot of the unnecessary features that cut over rewrites often generate." - Martin Fowler
