# AI Day 2026 — Work Log

**Talk:** Beyond MCP: Scaling AI Enablement for API Landscapes  
**Event:** Software Architecture AI Day  
**Date:** March 10, 2026  

---

## 2026-03-09 — Session 1

**Starting state:** Presentation has title slide + intro part (4 slides) + MCP part (6 slides) + closing slide. The 5-step structure referenced in the outline slide is not yet filled in.

**Goal:** Redesign the beginning of the talk and ensure the full story fits in 45 minutes.

**Structure agreed:** 4 parts, 15 content slides + title/closing = 17 slides total.

| Part | Title | Slides |
|------|-------|--------|
| 1 | MCP: Start Here | mcp-today, mcp-mechanical, mcp-context-problem, mcp-uncertain |
| 2 | Platform Engineering for AI | platform-engineering, isolation-layer, security-model, scale-problem |
| 3 | The Right Tool Access | tool-tool, tool-availability, tool-description |
| 4 | Workflows: The Right Abstraction | workflow-gap, github-example, workflow-api-level, workflow-payoff |

**Key narrative decisions:**
- OpenClaw named explicitly and framed as a cautionary signal about MCP's longevity
- Platform engineering concept introduced as the pivot/answer to "what should you invest in?"
- Consumption-agnostic theme runs through Parts 2–4, crystallises in workflow-payoff
- Audience poll and bridging-the-gap slides removed (remote format)
- Sandbox removed to stay within time

**Action:** Rewrote aiday.xml replacing the original intro + mcp parts with 4 new parts. CRLF line endings preserved. All 17 slides verified.

**Action:** Added images to 5 slides (copied from developerweek-2026 and bed-con-2025):
- `tool-tool` → api-ai-evolution-3-search.png
- `tool-availability` → api-ai-evolution-1-more.png
- `tool-description` → api-ai-evolution-2-description.png
- `workflow-gap` → api-ai-evolution-4-workflow.png
- `workflow-api-level` → api-mcp-ai-workflow-api.png

