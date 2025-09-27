# API Versioning

The Rules of Change

## Part: Introduction

### Slide: Title Slide – API Versioning

* Subtitle: “The Rules of Change”
* Presented by: Mike Amundsen
* Background image idea: gears, clocks, or crossing timelines
* “Every version tells a story — make it a short one.”

### Slide: What This Session Covers

* Why versioning exists
* What makes it dangerous
* The three rules of changing and API
* When and how to shut things down

### Slide: What We Mean by “Versioning”

* A change in the API promises/contract
* An announcement of new features
* A warniung of potential additional effort/cost

## Part: Challenge

### Slide: The Challenge of Change

* APIs must evolve to stay relevant
* Clients depend on stability
* Versioning tries to manage this tension
* Poor versioning magnifies pain

### Slide: The Temptation

* Fork instead of evolve
* Create new versions for every change
* Treat versions like checkpoints
* Result: fragmentation and friction

### Slide: Real-World Cost of Versions

* Older versions rarely go away
* Clients lag behind
* Every version adds support burden

### Slide: Review – Challenge

* Change is inevitable; coordination is not
* Versions should reduce pain, not add to it
* Versioning is a signal, not a solution
* Fragmentation is easy, consolidation is hard

## Part: Rules


### Slide: Some Helpful Versioning Rules

 * DON'T
   * Unless you MUST
 * Support older versions
   * For as long as you can
 * First, Do No Harm
   * Hippocratic Oath of APIs
 
### Slide: Three Rules to Live By

* 1. Take Nothing Away
* 2. Don't Redefine Anything
* 3. Make All Additions Optional

### Slide: Rule 1 – Take Nothing Away

* Your API is your promise
  * The features are frozen
* Once you document it, you can't take it back
  * URLs, media-types, vocabulary, etc.
* This includes documented <i>processing</i>
  * Did you promise to compute results?
  
### Slide: Rule 2 – Don't Redefine Anything

* The <i>meaning</i> must not change
  * <code>"p" param == pages</code>
  * <code>"p" param == people</code>
* Don't change <i>implied meaning</i> either
  * <code>"small (8oz), medium (16oz), large (20oz)"</code>
  * <code>"small (4oz), medium (8oz), large (16oz)"</code>
  
* An enumeration is a promise!

### Slide: Rule 3 – Make All Additions Optional

* You <i>can't</i> add new REQUIRED elements
  * <code>form.hatsize</code> can't be added as a required input
* You <i>can</i> add new OPTIONAL elements
  * <code>form.hatsize</code> is OPTIONAL, if missing set to <code>0</code>
* All new operations are optional
  * New workflow steps must be OPTIONAL
    * <code>open, review, approve (all required)</code>
    * <code>open, share, review, approve (share is optional)
 
### Slide: Communicate Changes Clearly

* Tell clients what changed, when, and why
  * provide a <code>diff</code> for the interface (see OVERLAYS)
* Publish migration guides and timelines
  * project changes in months/years, not days/weeks
* Track what versions are live and for whom
  * provide a single place to doscovery all versions (and all diffs)

### Slide: Example – S3 Model

* No breaking changes since 2006
* Backward-compatible by design
* One version, still supported
* Provider absorbs complexity

### Slide: Example – Salesforce Model

* Breaking changes allowed per major version
* Clients tied to version lifecycles
* New versions are contract resets
* Consumer must migrate on provider’s timeline

### Slide: Review – Rules

* Don't unless you MUST
* Take Nothing Away
* Don't Redefine Anything
* Make All Additions Optional
* Communicate Changes Clearly

## Part: Shutdown

### Slide: Shutting Down and API/Version

* Preparation
* Communication
* Mitigation
* Termination

### Slide: Importance of Retiring APIs

 * Nothing lasts forever
   * Better solutions come along
   * The service is no longer needed
 * Don't Trick Users
   * If the service is not supported, take it down
   * Help users find alternatives
 * Don't litter
   * Clean up your serfvices to reduce maintenance costs
   * Don't contribute to "digital trash"
   
### Slide: Preparation

* Plan Ahead
  * The larger your reach, the longer this will take
  * It took two years for Twitter/X to deprecate their v1 API
* Face up to instability
  * You're likely to have multiple versions in production at the same time
* Be sure to finish the job
  * Chase down the stragglers, close the loops

### Slide: Communication

* Update your documentation
  * Add notices to all affected endpoints
* Send out email/messages
  * Proactively send messages to your user base -- often!
* Emit signals in your responses
  * API responses should emit a Sunset header (RFC8594)
  
### Slide: Migration  

* Ease the pain for your user base
  * This is likely a major disruption for everyone
* Publish the source code as public domain
  * If at all possible, share the code
* Open source the API details (ALPS, OpenAPI, etc.)
 * Share published API descriptions and definitions
* Make user data recoverable
  * If users gave you data, give it back
  
### Slide: Termination

* Arrange "Brown-outs"
  * Turn of the service temporarily to help reach all users
* Set services to report the shutdown
  * Set servers to report HTTP 410 Gone for all closed end-points
* Be sure to point to Mitigations
  * Always return links to your Mitigation details  
  
### Slide: Review – Shutdown

* Importance of Retiring APIs
* Steps to follow 
  * Preparation
  * Communication
  * Mitigation
  * Termination
* Don't Litter

## Part: Review

### Slide: Review – Challenge

* Versioning exists to help manage change
* But it often becomes the problem itself
* Every version should be justified
* Less is better

### Slide: Review – Rules

* Don't unless you MUST
* Take Nothing Away
* Don't Redefine Anything
* Make All Additions Optional
* Communicate Changes Clearly

### Slide: Review – Shutdown

* Versions must die
* Your shutdown plan is part of your design
* No sunset = no clarity
* Be intentional about endings

