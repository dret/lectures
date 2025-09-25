# OpenAPI Overlays
Extending and Adapting API Contracts

## Part: The Problem & the Promise

### Slide: Title Slide – OpenAPI Overlays
- Subtitle: “Extending and Adapting API Contracts”
- Presented by: Mike Amundsen
- Optionally include a background image of layered paper or a patch
- “What if your API spec could adapt without forking?”

### Slide: Why Overlays?
- Different audiences need different specs: internal, partner, public
- Forking creates maintenance burden and version drift
- Overlays = modify without duplicating
- Think composability and reuse for API contracts

### Slide: Real-World Examples
- Redact internal ops for partner docs
- Add beta endpoints without polluting GA spec
- Remove internal-only fields for mock generation
- Translate descriptions for international teams

## Part: How Overlays Work

### Slide: What Is an Overlay?
- A declarative patch applied to an OpenAPI document
- You define the changes, tooling applies them
- Output: customized OpenAPI spec for a specific context
- Based on OpenAPI Initiative's Overlay spec

### Slide: Anatomy of an Overlay
- Keys: `target`, `action`, `value`
- Actions: `add`, `remove`, `replace`
- Targets are JSONPath-style references into base spec
- Output = transformed version, not an inline mutation

### Slide: Overlay vs Fork
- Forking duplicates effort and increases drift
- Overlays isolate change and encourage reuse
- Keeps base spec authoritative and maintainable
- Great for automation and clarity

### Slide: Overlay Actions
- `add`: insert new data
- `replace`: change existing value
- `remove`: delete fields or sections
- Focus on small, targeted overlays — easier to debug

## Part: Overlay Examples

### Slide: Base Spec Example – GET /pets
- Path: `/pets`, Method: `GET`
- Summary, description, tags, response schema
- This will be modified by overlays in the next slides
- Used for mock/demo/test generation

### Slide: Example – Add Summary
- Target: `paths./pets.get.summary`
- Action: `replace`, Value: "List all available pets"
- Clean way to change messaging without rewriting the spec
- Useful for audience-specific tone and language

### Slide: Example – Remove Operation
- Target: `paths./pets.put`
- Action: `remove`
- Removes internal update operation from external docs
- Use before publishing to external consumers

### Slide: Example – Replace Schema Field
- Target: `components.schemas.Pet.properties.name.description`
- Action: `replace`, Value: "The pet’s given name"
- Fine-grained control of docs, schema, or examples
- Localized or clarified description overrides

## Part: Usage Patterns

### Slide: Use Cases at a Glance
- Internal vs external profiles
- Beta vs GA feature overlays
- Region-specific or language-specific docs
- Security redaction for mock/test users

### Slide: Overlay Directory Patterns
- `overlays/internal.yaml`, `overlays/partner.yaml`, etc.
- Compose overlays in order if needed
- Helps clarify intent and audience for each patch
- Enables portable, layered API bundles

### Slide: CI/CD Integration
- Apply overlays during build or deploy
- Automate audience-specific doc builds
- Can support GitOps-style preview/staging flows
- Avoids duplication across environments

### Slide: Testing and Mocking
- Use overlays to generate testable variants
- Tailored mocks: remove auth headers, hide internals
- Great for contract testing and demos
- Supports partial feature rollout

## Part: Guidance & Close

### Slide: Caveats and Challenges
- Targets may break if base spec structure changes
- Overlays can become brittle if overused
- Limited tooling compared to full OpenAPI
- Requires discipline in base spec maintenance

### Slide: Best Practices
- Keep overlays small and scoped
- Name overlays clearly (`redact.yaml`, `fr.yaml`, etc.)
- Document intent of each overlay
- Validate before applying

### Slide: Summary
- Overlays = composable, declarative OpenAPI deltas
- Solve the “spec reuse” problem without forks
- Ideal for multi-team, multi-stage, multi-audience APIs
- Backed by OpenAPI community standards

### Slide: Call to Action
- Start with one: redact internal ops before publish
- Explore `overlay-cli` or your own JSON patch scripts
- Integrate overlays into CI/CD and testing
- Help grow the ecosystem with examples and feedback

### Slide: Resources
- OAI Overlay Spec: https://github.com/OAI/OpenAPI-Specification/tree/main/overlays
- Example tool: https://github.com/Mermade/openapi-overlays-cli
- Sample repo: https://github.com/your-org/openapi-overlays-demo
- Contribute to the spec, try overlays in your pipeline

