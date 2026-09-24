# Openness Matters: Source and Interfaces in the Age of Agents

## WSO2Con Africa 2026, Nairobi, September 24, 2026

### Erik Wilde

Thanks for the friendly introduction, Srinath.

What I want to do is talk a little bit about various aspects of openness. It's a bit of an
extension of what Srinath was talking about in his first part in this track, where openness
itself is more of a long-term view, a strategic thing to do. And the faster everything moves,
in particular these days with AI, I think sometimes we tend to lose that more strategic view. I
want to make a case for openness on a variety of levels, and mostly I want to give you some
examples that hopefully convince you that investing in that, and maybe slowing down a little
bit to think about how you architect your business systems, can be worth it.

Very briefly about myself, as Srinath said: I work with the OpenAPI Initiative. I'm sure all of
you have heard of OpenAPI. OpenAPI is the standard nowadays for how you describe HTTP-based
APIs, and it's been around for a long time. The OpenAPI Initiative is the standards body that
owns and develops that standard. It's all open, and we try to make sure that we get as many
people involved in the standardization process as possible. There are new versions coming out
all the time.

The more we hear back from the community about what they like about the standard, what they
dislike about it, what they think it should be doing in the future, the better both we and the
community can evolve the standards. So that's what I mostly focus on in my work with the
OpenAPI Initiative: trying to get the word out and telling people that standards ideally are
community-based. Of course, at some point they get frozen, and at that point you say, this is
the standard, I can't do anything about it, it's not up for debate. But the way they come into
being is ideally a community-based process, and I've been trying to help with that for quite a
while.

I'm mostly using YouTube and LinkedIn these days. If you want to connect, feel free to do so.
That's my LinkedIn profile, and you can also find me on YouTube, where I have a channel where I
talk about technology standards, case studies and so forth.

So I want to start, and Srinath, if you could give me the next slide. You said my first slide
should not be a scary one, and I have a scary one. There are new studies coming out all the
time; these are just two examples and you can find many of them. What you see in these studies,
which are more from a business perspective, is what you actually get out of AI and where this
thing does not work so well.

The continuous theme throughout all of these is that things start to become problematic when
people try to scale their AI practices. It's not so hard to come up with a good idea, to use
clean data, to wire up my demo and my prototype to exactly the things it needs to do, to give
it five tools, and then to say, look, it works. And that's definitely interesting.

But then if you want to scale it up and say, now everybody in my company should be doing that,
suddenly you realize you don't have all the clean data. Or maybe you have it, but it's not
easily available. Or maybe you have it, but it's actually not something that you want to send
to the United States all the time. You may not have all the capabilities available; if your AI
wants to take action, you need an accessible and safe way for it to do that.

You also may not have a good way to figure out whether things have been working or not. And
that is the point when you realize, I'm actually not quite where I want to be. I can build nice
demos. I can build the demos that show this would be a good thing to do, but to scale it I
would need to do more homework.

In a different form, I've been working with APIs for a very long time, and it feels like I've
spent, well, by now it's actually more than ten years, travelling around the world from
conference to conference telling people: you should care about your APIs. And oftentimes people
say, I understand, but I have other things to do. I have this project to finish, or I don't
even know who owns this part. And so people usually don't do it. But I think that with AI we do
get a new forcing function.

I hope that we can see that. I think we are starting to see it with studies like this, and
again there are many more available if you just look in the usual places. So this is from MIT,
this is from McKinsey, and you can also find some from Harvard Business Review, Deloitte and
others. Everybody looks at how well companies are succeeding at this. And typically what they
say is there's a lot of potential, there's a lot of interest, and there's also a lot of
friction in the organization to actually make it work.

And very little of that friction has anything to do with the models. You pretty rarely hear
people say, we need better models. Maybe in some cases. But in most cases the problems are
elsewhere. And that's why I'm interested.

There's also this interesting thing, and I have to name-drop Tim O'Reilly here, I'm sure all of
you know him, the publisher of lots of very good books, I'm sure we all have some of them on
our bookshelf. He wrote an article about a year ago where he said AI integration is the moat.
It is what separates companies who really can move fast from those who can't. It's not that
they are better at AI, it's that they are better at making AI work at scale with their systems,
in ways that make sense, in ways that are economical, in ways that are safe, in ways that do
not violate trust, in all the ways that we need those systems to evolve so that we can actually
start seeing the benefits of AI instead of just building demos and being happy that those demos
seem to work.

When we look at this, and I don't want to say this is the only thing to look at, but because
I'm in the open source track here, and this is about a variety of open things, I was thinking
there's an interesting spectrum or continuum of openness. If you think about what openness
actually is, openness in my mind does a variety of things, but it definitely gives you certain
degrees of freedom, because you can do certain things.

When I started with APIs, I actually started at a company like this that had a very closed
product. It was a document workflow product. Everybody liked it, but it was really closed. I
couldn't add anything to it. And customers said, hey, I like the product, but I need to
integrate it into my environment. I need to be able to put stuff in it in a programmatic way
and get stuff out of it in a programmatic way. And then we were planning to make the product
more open, instead of having it super closed, because at some point customers would just say, I
like the product, but it's just sitting there isolated, and that's not good enough for me.

So the next point is to say, at the very least you should have open interfaces. You should have
ways for somebody to interface with your product, how they can integrate it, and that comes in
the form of APIs and other things as well.

We also have this interesting thing now, and I'll get to that in a minute, which I think is a
new dot on this openness spectrum, which is open weights. I'm not sure all of you have heard
about open-weight models. They're not fully closed like the OpenAI or Anthropic models, where
you have no access to the model at all other than through their API, you have no idea how it
works, and you just have to trust that it's going to be good.

Open-weight models are not open source. You don't even know how they were trained, you don't
have full access to how they were created, but you can look at how they work and you can tweak
them. You get them, you see the weights, and if you put in the effort and the computation you
can tweak the weights, you can basically fine-tune them to your needs, which is pretty cool. So
a lot of people are starting to look at that, because now you actually have a new kind of
openness. I would say that's fairly specific to AI models, but it's an interesting point on
that spectrum of openness.

And then of course there's open source, where when you want to use something, you get full
access. You can do with it whatever you like. Depending on the license there may be some
restrictions in terms of what you can do or how you can distribute it, but it gives you a lot.

On the other hand, not everything is open source. There's a lot of stuff out there that you use
that I'm sure is not open source. Some companies are pretty strict about saying we try to use
open source whenever we can. Others are really not that much in favour of open source, or they
don't care that much. Open source is fine, but in most cases you end up using things that are
not open source, because not everything is available as open source. So we have this spectrum
to work with, and I want to go through how that works.

On the one hand, we have this openness spectrum in terms of what we prefer for the things we
use. And I would argue that openness at least should always be part of your evaluation. All
other things being equal, which of course is hard to say, you should prefer the more open
option, because it gives you more options. If you figure out along the way that you want to
tweak something, that you want to change something, the more open it is, the more easily you
can do that.

On the other hand, there's also this aspect of how open are you. And that's something I'll get
to a little bit later. What I mean by that is, for some of us, maybe not for all of us, it
depends very much on what business you're in, but you are also providing stuff to others. You
have your area of business, you have customers interfacing with you. Maybe you make physical
products, maybe you provide banking services, maybe you provide insurance, maybe you're a
government. There are many different ways of what you do as a business, and then how others can
interface with you. And I think that is something where we also increasingly have to think
about openness. How open are we in what we do, to be used by others?

We already see that now with what you've all heard about here. There's this huge hype around
MCP, where the idea is that everybody should expose MCP servers so that whatever they expose is
easily consumable by AI agents. And that's one form of openness, where I, as somebody who
provides something, want to make that available to somebody so it's easily consumed.

It may become a decisive factor. It may become decisive when somebody says, your service is as
good as or better than the other service, but I cannot really use your service in my workflow,
and that other service makes it very easy for me, so I'll use that one. If you're not looking
at these things, then you may lose out over time. This kind of openness, where you're not just
trying to make sure that you do things internally in an open way, but also how you interface to
the outside, I think that is something that will be really important.

I want to tell two short stories about where I think we see this happening. These are really
just examples, but I find them informative.

I've already shown this, it's the same picture as before. For quite a while we looked at AI
models and we assumed they're always just sitting there. They're just open interfaces. We don't
have any visibility into how ChatGPT actually works internally. We just use their API, we send
it a request, we get a response, and we're happy with that. And that's fine. But that also
means it doesn't give you a lot of freedom.

What we see now is that, and I think it actually started with DeepSeek, that was I think the
first model that was open weights and pretty good. People said, that is not quite frontier-
level good, but it's pretty good. And nowadays you get these models and people start thinking,
well, maybe there's no need for me to box myself in if I can also do that. And now we're
actually at a level which I find pretty mind-blowing, where I can have a model running on my
laptop that is actually not so bad. It's not quite as good, but it's pretty good. I'm pretty
certain that we're getting to the point where we all have our own models running on our phones.
And the more we keep in mind that this is probably the world we're heading towards, the more we
can build our stuff today so that we don't have to re-architect and rebuild everything later.

Anybody notice what that thing is on the right-hand side? No, because nobody here is from
Germany. The German thing is called an Eierlegende Wollmilchsau, which means a kind of sheep
that lays eggs and that you can eat and that also gives you milk. It's the mythical creature
that does everything we ever wanted.

And for a while, that's what we had. The frontier models were this for us. We said, these
models are so good, they do everything, they're really all we ever want to use. And the
frontier model companies do a lot to push that narrative, understandably, because that's their
business.

I've been of the opinion for quite a while that most business tasks, not coding, but most
business tasks, deciding whether a loan application should be accepted or not, don't need
frontier models. They're relatively simple things to decide. There are a couple of factors
going into it.

I think we will increasingly see this, where we know that business tasks are oftentimes
relatively narrow in what has to be decided. And in many cases we will probably also
increasingly say, you know what, I really don't want to send that data to whatever service all
the time. I actually want to host the model myself, maybe on my own servers, maybe even
locally.

The more you design for this, the more you are open about your model choice, the more you leave
that open, the more it's something you can move to. And I think this is something where we all
will have to get better at mixing and matching models.

Case in point: has anybody heard about Jev? Okay, it was announced last week, so that's fine.
But Jev is pretty amazing. It's a new model, it's not a classic LLM. It's a so-called decision
model. So it doesn't chat with you. You basically pose it a question and it just answers. Yes
or no, good or bad. It is trying to make decisions, it doesn't chat with you. It's the kind of
thing you can plug into automation pipelines and it will give you pretty good decisions,
probably better than most general chat- based models. And this is just one example of the kinds
of things that I think we will see coming along.

And WSO2 of course have this, and I think you also get this from other vendors: this idea of an
AI gateway. This is exactly the kind of architectural thinking that I think we have to do in
the future. An AI gateway is a thing where you're a consumer of AI services, and instead of
directly connecting to an AI provider, you go through an AI gateway. If you do that, you make
it much easier to switch providers.

So that, for example, is a pattern for having openness in your architecture, where you say, for
now we use OpenAI or whatever, but we may switch. If for reasons of sovereignty, for reasons of
cost, for a number of reasons we want to switch, we can do that, because the architecture makes
it easy for us.

I think these really are the kind of longer-term thoughts that should go into how we build
things. Because again, of course I could build a demo faster if I just hard-coded it, but if I
build a business application, I should think about how I evolve this next year, the year after,
how I can make it easy for myself to adapt to changes.

The other thing I also think, and I don't want to spend much time on it, is that in some cases
maybe we don't really need AI at all. I think in a lot of cases nowadays there's a little too
much AI defaultism, where people just say, oh, we'll just use AI, AI can do anything. Which it
kind of can, maybe, but maybe not always well and not always cheaply. So sometimes, again, if
you build things with AI, let's say the decision engine, then maybe you build that with AI, but
you should also build clean interfaces around that thing and say, right, now we do this with
AI, but maybe later we do it with more deterministic automation. By making it an encapsulated
component, we keep those options open for ourselves going forward.

That was my first example of how I think openness can actually help with the long-term
evolvability of your systems, and with giving you options to change things.

I want to give you a second example, which I think is also interesting, and which again uses
the same spectrum, but puts you on it. It's about how open you actually are in making your
services available, and what kind of openness you should provide to your consumers so they can
easily consume you.

One thing that I think is going to happen quite a bit is what I call bring your own agent. I
think we will move into a world where a lot of people will have their own agents in some shape
or form. And they want to consume services plugged into their agent, because they say, I'm
going to book a trip, here's my preferred travel provider, here's my preferred hotel provider,
just make it happen. Or pick your own, whatever. But you want to make yourself pluggable into
their agents. And that means we have to start thinking about how we make ourselves consumable
for agents.

If we have APIs, we have a good starting point. Many of us don't have a lot of APIs, and not
everybody has them, that's fine, but even if we have an API, we have to think about how these
APIs are actually described for agents. Because a lot of APIs are technically APIs, but they're
not actually all that usable for agents. So that is something I think we need to think about.

I haven't had the time to go through the details of how to make APIs consumable for agents.
It's a design question. You have to describe them well, you have to make sure you have examples
in there, you have to make sure you describe all the types, you have to make sure you make it
very clear when and how this API should be used and also when it shouldn't be used, because an
agent will come and read that. And it will decide whether it wants to use your API or not.

So I think that is an interesting point. One thing you can do, and at my last company, Jentic,
I was part of building this, so I just wanted to show it very briefly, I don't want to do a
demo, just show you how we did it, and there are others that provide this kind of service, I
think WSO2 doesn't have that right now, I hope, is testing your API for AI readiness. You plug
in an OpenAPI document and it gives you a rating that says, yeah, this is okay, or here's where
you need to work.

And you get that now from a number of companies who build this kind of thing. What I would
encourage you to do is to run this kind of rating over a couple of your APIs and see where
you're at, and also to make that part of how you design APIs going forward, and say, if I
design new APIs, they should really score well on that test. And of course you can design your
own test, write your own rules, it doesn't matter. But keep that in mind going forward: you
will have agents consuming your APIs. It doesn't matter whether you want it or not, you will
have it. So the better, the more agents work well with them.

One thing that I don't like seeing these days so much is what I call MCP washing. Companies
invest quite a bit of effort into building MCP servers. I don't think that's such a great idea,
just because MCP is a very specific delivery channel for a certain class of AI applications. It
means that yes, we plug nicely into Claude and Codex, but it really is just that.

So what I usually advise people to do is to instead invest that effort into building your APIs,
and then just generate MCP from that. There are a whole bunch of products that allow you to do
that, and I guess WSO2 has this capability as well. So that in my mind is a much better way
going forward: instead of investing a lot of effort into building MCP, I build good
capabilities which I then publish as MCP.

And another case in point, also just published last week: Meta released Muse. Anybody seen
that? I think nobody's using it now, right? So it's Meta's new idea of your personal agent,
kind of living on a laptop or living in their cloud, and you give it access to your email, your
calendar, whatever, and it does everything for you. We'll see how much people love that idea,
but at least they're trying to push it. And the interesting thing is that Muse also consumes
OpenAPI. So it doesn't just accept MCP, you can also throw any OpenAPI at it and it will
happily consume that.

By the way, OpenClaw, same thing. Have any of you experimented with OpenClaw when it came out?
Yeah. OpenClaw also very happily worked with OpenAPI. It didn't really care much about MCP,
which I think drives home the point that it makes more sense to really invest in your APIs as
the true foundation, and then if you have MCP consumers you just generate MCP from your APIs
and your data, and you haven't invested too much into that specific delivery channel.

And that also means that if you create OpenAPI, and I have to show this to you because like I
said I work with the OpenAPI Initiative, you plug into that ecosystem, and you allow your
consumers to plug into that ecosystem as well, to use all kinds of tooling to work with the
things that you produce.

Because if you go here, this is a list of tools, which is literally called openapi.tools. And
here you can find, these are all the tools, HTTP clients, converters, data validators,
documentation tools, gateways, whatever. A whole bunch of tools that people can work with if
you give them OpenAPI.

I think that really is one of the powers of standards: that if you work with standards, you
allow people to plug into those existing ecosystems, instead of just saying, here's what I do,
figure out how to work with me, because I do it in a very specific way.

So again, going forward, I think it makes a lot of sense for us to think that we have to become
as consumable as possible from the outside. For some of you that may matter more than for
others, but I think in some shape or form it matters for almost everybody in here.

Anybody here think that they don't have to worry about how consumable they are from the
outside? That it's not something they really have to think about? Okay. Or maybe you just don't
feel it. But if you do think that, come talk to me afterwards, because I'd be curious. I think
there's always some scenario you can come up with where you say, what about this? What if
somebody just wants to check the status of this or that, and you need some way for people to
plug that into their own setup. You can be pretty minimal, but still, it's probably useful.

Okay, so I think one of the things we see nowadays is that things just move faster and faster.
AI is definitely accelerating things, and that creates pressure on us to keep up. That's good
and interesting, and it also is hard in some ways. I think one of the things we have to think
about is that we still have to be disciplined in building things in an open way.

That's the main message I want to give you: that good architecture, and thinking about
openness, and thinking about how that actually pays off going forward, is something that still
matters even with that pressure.

And there's this thing, I've been using this line for a long time, but I think you always have
to think that we shouldn't just build systems, we should see what we do as being part of an
ecosystem. And that ecosystem is getting more and more entangled, more and more complicated,
and it changes more and more quickly. So we really have to think about how we become the best
possible citizens in that ecosystem. And I think openness and standards are very good answers
to that.

And in order to have something you can go away with and do next Monday, or maybe even Friday:
if you have APIs, go ahead and check them for AI readiness. Maybe just do it for fun. If you
can do it, it just takes a minute.

And consider going forward making the AI readiness of your APIs a new quality criterion that
you put in place, and say, our APIs should be AI-friendly. Maybe not for today, but if you
release an API you will have it for a while, so it makes sense to think about that now.

And the other thing, if you've already built things with AI, definitely think about that model
of an AI gateway, where you isolate your AI consumption from the AI provider by putting a
gateway in between, so that it becomes easier for you to switch models, because for whatever
reason, economics, sovereignty, better decision quality, you actually want to switch models and
you don't want to have to rebuild your whole application.

Okay, now that you have your tasks for tomorrow or Monday, I'm done.
