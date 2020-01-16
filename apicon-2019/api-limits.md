# What APIs Can and Cannot Do

APIs often are perceived as having almost magical properties: Since they are so essential to digital transformation, and all of our digital experiences today are powered by APIs, the conclusion is that once you have and use APIs, all the wonders of digital transformation are simply going to happen. Of course that's not necessarily the case, and the purpose of this article is to explain some of the things that are useful and where APIs play a central role, but where APIs are necessary but not sufficient.

Working with many global organizations in the API space, most recently as part of the [Axway](https://www.axway.com/) [Catalyst Team](https://www.axway.com/en/services/catalysts), our role is helping customers make good decisions. This of course also involves helping customers avoid bad decisions. One bad decision is to have an incomplete understanding of the complexity of digital transformation and APIs, and to expect too much from just "doing APIs", without making sure that all necessary factors for success are in place.

I'll explain 5 common misconceptions about the powers of APIs using [Louis C.K.'s wonderful "Of Course! But maybe..." format](https://www.youtube.com/watch?v=0O5h4enjrHw): We expect these good things to happen when using APIs, but we also have to understand that they are not quite as simple, and that success will depend on additional complexities also being addressed. Better understanding these complexities from the very beginning will help to avoid disillusionment, and will also help to make sure that all necessary ingredients for a successful API journey are considered when starting the journey.


<img style="float: right; width: 50%" src="img/monolith-2001.jpg">
## #1: Untangling Monoliths! Of Course!

---
Of course APIs are essential for improving modularity, allowing entangled IT systems to be decomposed into loosely coupled ecosystems and thus being easier to maintain and extend. Of course!

---

One common motivation to use APIs is to get rid of monolithic solutions that often have a variety of problems associated with them, most importantly being hard to change, hard to scale, and hard to integrate with other solutions. By definition, APIs (in their modern sense of "networked interfaces") are essential in this picture, because untangling means that the resulting modular structure needs communications to function, and these will be using APIs.

The hard work in this picture, though, is to come up with the "right" modularization where the resulting structure follows structured design principles. There are many theories and practices how to come up with a "good" structured design that represents a complex system, and the hard work of doing it will lead to components that then get to communicate through APIs, but the APIs are an effect and not the cause of the untangling.

[Sam Newman](https://samnewman.io/)'s ["Monolith to Microservices"](https://samnewman.io/books/monolith-to-microservices/) provides a good guide how to systematically decompose a monolithic system into one that is composed out of many communicating components. It is telling that the book has a lot to say about decomposition patterns and strategies, but focuses little on how to design communications between the resulting components. The success of a good decomposition is defined by identifying the right components, and then carving out parts in ways that allow the overall system to remain functional throughout the transition. APIs will be created as a side-effect of doing this, but success is a function of decomposition patterns and strategies.

The worst case scenario is that APIs will actually make things worse, because decomposition was not done properly. In this case, the newly created API-based architecture suffers from chatty APIs, and the APIs themselves are not all that useful for unlocking new value. This result often is referred to as a "distributed monolith", but just as success, this result cannot be attributed to "APIs negatively impacting performance". In addition, bad API design choices may further negatively impact the resulting system, but the root cause in this case most often is a design that's not loosely coupled.


<img style="float: right; width: 50%" src="img/pneumatic-tubes.jpg">
## #2: Scaling Up! Of Course!

---
Of course APIs allow you to more easily scale IT resources by only scaling up those parts that actually need to be scaled. Of course!

---

Scaling things better also is one of the reasons why APIs may be considered. When you have decoupled components, the reasoning goes, it becomes easier to scale up those parts that need scaling, while other parts of the system can be left alone. In many cases when people consider microservices or serverless, one of the main values they might be interested in is scaling. For microservices, you then might have to invest in how to implement scaling with something like Kubernetes. For serverless, scaling works easier, where given a sufficiently capable platform, scaling can be done transparently and is simply a question of how often serverless functions get invoked.

Since APIs are essential for both microservices and serverless (they are part of the definition of what these things even are), once again one might come to the conclusion that with APIs in place, scaling becomes much easier. Once again, this is not necessarily the case. When it comes to scaling, and in particular the selective scaling that API-based components can deliver (only scale those components that need to be scaled), then once again architecture is much more important than APIs.

A little while ago when Representational State Transfer (REST) was a much-discussed topic, one often overlooked aspect of it was that one of the REST constraints is for services to be stateless. That way, each invocation of a service strictly is just a function of the invocation (and not of some shared conversation state). This design allows scaling to be much simpler, because then services can be scaled without having to keep track of conversation states. This is a very useful design, but it is one that very much depends on service designers specifically creating stateless designs. For services not being stateless, scaling gets considerably harder because requests cannot as easily be used for scaling up as required.

As before, there also is a worst-case scenario. If the system design does not take shared state into consideration, scaling may have unintended side-effects. It still may be possible to scale the component on demand, but scaling up the context that it needs (because it is not stateless) may have an unfortunate ripple-effect. This possibly can be mitigated by sophisticated state-sharing approaches, but the underlying problem often is that of "implicit shared state".

<img style="float: right; width: 50%" src="img/money-press.gif">
## #3: Monetization! Of Course!

---
Of course APIs can be new sources of revenue, allowing cost-effective experimentation with digital offerings and creating new revenue streams beyond the traditional sources of income. Of course!

---

There is an abundance of presentations that highlight how some companies make a lot of money with their APIs, the most prominent examples may be [Stripe](https://stripe.com/) and [Twilio](https://www.twilio.com/). Some of these presentations talk about the "API Economy" and then jump to the conclusion that this means that money is being made by charging for API access. For organizations considering their API journeys, this looks like a tempting route, opening up new sources of revenue just by exposing APIs and charging for them. Some API vendors also rather aggressively advertise this sort of direct API-based income, hoping that potential customers will factor this into their ROI analyses. 


<img style="float: right; width: 50%" src="img/tower-of-babel.jpg">
## #4: Communications! Of Course!

---
Of course APIs are the way how to communicate in digital environments, and via APIs all capabilities can easily interact throughout the entire organization and beyond. Of course!

---


<img style="float: right; width: 50%" src="img/tower-of-babel.jpg">
## #5: Organizational Issues! Of Course!

---
Of course APIs can help with improving the way how teams communicate and how the organization can innovate. Of course!

---
