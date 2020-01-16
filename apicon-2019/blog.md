# What APIs Can and Cannot Do

APIs often are perceived as having almost magical properties: Since they are so essential to digital transformation, and all of our digital experiences today are powered by APIs, the conclusion is that once you have and use APIs, all the wonders of digital transformation are simply going to happen. Of course that's not necessarily the case, and the purpose of this article is to explain some of the things that are useful and where APIs play a central role, but where APIs are necessary but not sufficient.

Working with many global organizations in the API space, most recently as part of the [Axway](https://www.axway.com/) [Catalyst Team](https://www.axway.com/en/services/catalysts), our role is helping customers make good decisions. This of course also involves helping customers avoid bad decisions. One bad decision is to have an incomplete understanding of the complexity of digital transformation and APIs, and to expect too much from just "doing APIs", without making sure that all necessary factors for success are in place.

I'll explain 5 common misconceptions about the powers of APIs using [Louis C.K.'s wonderful "Of Course! But maybe..." format](https://www.youtube.com/watch?v=0O5h4enjrHw): We expect these good things to happen when using APIs, but we also have to understand that they are not quite as simple, and that success will depend on additional complexities also being addressed. Better understanding these complexities from the very beginning will help to avoid disillusionment, and will also help to make sure that all necessary ingredients for a successful API journey are considered when starting the journey.


## #1: Untangling Monoliths! Of Course!

---
Of course APIs are essential for improving modularity, allowing entangled IT systems to be decomposed into loosely coupled ecosystems and thus being easier to maintain and extend. Of course!

---

One common motivation to use APIs is to get rid of monolithic solutions that often have a variety of problems associated with them, most importantly being hard to change, hard to scale, and hard to integrate with other solutions. By definition, APIs (in their modern sense of "networked interfaces") are essential in this picture, because untangling means that the resulting modular structure needs communications to function, and these will be using APIs.

The hard work in this picture, though, is to come up with the "right" modularization where the resulting structure follows structured design principles. There are many theories and practices how to come up with a "good" structured design that represents a complex system, and the hard work of doing it will lead to components that then get to communicate through APIs, but the APIs are an effect and not the cause of the untangling.

[Sam Newman](https://samnewman.io/)'s ["Monolith to Microservices"](https://samnewman.io/books/monolith-to-microservices/) provides a good guide how to systematically decompose a monolithic system into one that is composed out of many communicating components. It is telling that the book has a lot to say about decomposition patterns and strategies, but focuses little on how to design communications between the resulting components. The success of a good decomposition is defined by identifying the right components, and then carving out parts in ways that allow the overall system to remain functional throughout the transition. APIs will be created as a side-effect of doing this, but success is a function of decomposition patterns and strategies.

The worst case scenario is that APIs will actually make things worse, because decomposition was not done properly. In this case, the newly created API-based architecture suffers from chatty APIs, and the APIs themselves are not all that useful for unlocking new value. This result often is referred to as a "distributed monolith", but just as success, this result cannot be attributed to "APIs negatively impacting performance". In addition, bad API design choices may further negatively impact the resulting system, but the root cause in this case most often is a design that's not loosely coupled.


## #2: Scaling Up! Of Course!

---
Of course APIs allow you to more easily scale IT resources by only scaling up those parts that actually need to be scaled. Of course!

---




## #3: Monetization! Of Course!

---
Of course APIs can be new sources of revenue, allowing cost-effective experimentation with digital offerings and creating new revenue streams beyond the traditional sources of income. Of course!

---

## #4: Communications! Of Course!

---
Of course APIs are the way how to communicate in digital environments, and via APIs all capabilities can easily interact throughout the entire organization and beyond. Of course!

---

## #5: Organizational Issues! Of Course!

---
Of course APIs can help with improving the way how teams communicate and how the organization can innovate. Of course!

---
