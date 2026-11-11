# Agents (wshobson) — Kimi Code Plugin

**The wshobson/agents collection: 202 specialized subagents and 14 skills, ported from Claude Code to Kimi Code.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows%20%7C%20Linux-lightgrey.svg)](kimi.plugin.json)
[![Kimi Code](https://img.shields.io/badge/Kimi%20Code-plugin-6C5CE7.svg)](https://github.com/mnshkv/kimi-agents-plugin)

A port of [wshobson/agents](https://github.com/wshobson/agents) (MIT, Seth Hobson) — the largest curated catalog of coding subagents. The upstream repository ships 92 Claude Code plugins covering backend and frontend development, DevOps, QA, security, data, SEO, trading, embedded systems, and more. This plugin consolidates all of them into a single Kimi Code plugin: every agent lives in `agents/`, grouped by its source plugin in [INDEX.md](INDEX.md).

## Why

Instead of installing dozens of single-purpose plugins, you install one plugin and get the entire specialist roster. Each agent is a domain expert with a narrow, well-written system prompt — backend architects, security auditors, TDD orchestrators, Kubernetes operators, quantitative-trading researchers. Kimi Code's native subagent support (`Agent` tool) maps directly onto Claude Code's Task tool, so the agents run as-is.

## Features

| What | Count | Where |
|---|---|---|
| Specialized subagents | 202 | [`agents/`](agents/) — full list in [INDEX.md](INDEX.md) |
| Source plugins (categories) | 82 with agents | [INDEX.md](INDEX.md) |
| Standalone skills (from agent-less plugins) | 14 | [`skills/`](skills/) |
| Platforms | macOS, Windows, Linux | — |

Highlights from the catalog:

- **Backend & API** — `backend-development` (8 agents): backend architect, GraphQL/REST/event-sourcing specialists, Temporal workflow pro, TDD orchestrator
- **Quality & review** — `comprehensive-review`, `code-refactoring`, `unit-testing`, `tdd-workflows`, `performance-testing-review`
- **DevOps & cloud** — `cicd-automation`, `cloud-infrastructure` (7 agents), `kubernetes-operations`, `deployment-strategies`, `observability-monitoring`
- **Security** — `security-scanning`, `backend-api-security`, `reverse-engineering`, `signed-audit-trails`
- **Data & ML** — `data-engineering`, `machine-learning-ops`, `llm-application-dev`, `quantitative-trading`
- **Multi-agent teams** — `agent-teams`: team-lead, team-implementer, team-reviewer, team-debugger for parallel work with file-ownership boundaries

## Package catalog

All 92 upstream plugins. Click a package to jump to its agents in [INDEX.md](INDEX.md).
Plugins marked "skill"/"command" ship no agents — their content was ported as skills under `skills/`.

| Package | What it covers | Ported |
|---|---|---|
| [accessibility-compliance](INDEX.md#accessibility-compliance) | WCAG accessibility auditing, compliance validation, UI testing for screen readers, keyboard navigation, and inclusive design | 1 agent |
| [agent-orchestration](INDEX.md#agent-orchestration) | Multi-agent system optimization, agent improvement workflows, and context management | 1 agent |
| [agent-teams](INDEX.md#agent-teams) | Orchestrate multi-agent teams for parallel code review, hypothesis-driven debugging, and coordinated feature development using Claude Code's Agent Teams | 4 agents |
| [api-scaffolding](INDEX.md#api-scaffolding) | REST and GraphQL API scaffolding, framework selection, backend architecture, and API generation | 4 agents |
| [api-testing-observability](INDEX.md#api-testing-observability) | API testing automation, request mocking, OpenAPI documentation generation, observability setup, and monitoring | 1 agent |
| [application-performance](INDEX.md#application-performance) | Application profiling, performance optimization, and observability for frontend and backend systems | 3 agents |
| [arm-cortex-microcontrollers](INDEX.md#arm-cortex-microcontrollers) | ARM Cortex-M firmware development for Teensy, STM32, nRF52, and SAMD with peripheral drivers and memory safety patterns | 1 agent |
| [avoid-ai-writing](INDEX.md#plugins-without-agents-ported-as-skills) | Audit and rewrite prose that reads as machine-generated, across READMEs, changelogs, PR descriptions, docs, and blog copy, with detect-only, rewrite, and edit-in-place modes | 1 skill |
| [backend-api-security](INDEX.md#backend-api-security) | API security hardening, authentication implementation, authorization patterns, rate limiting, and input validation | 2 agents |
| [backend-development](INDEX.md#backend-development) | Backend API design, GraphQL architecture, workflow orchestration with Temporal, and test-driven backend development | 8 agents |
| [before-you-build](INDEX.md#plugins-without-agents-ported-as-skills) | Pre-build product risk review for founders, product teams, and AI-assisted builders before implementation starts | 1 skill |
| [block-no-verify](INDEX.md#plugins-without-agents-ported-as-skills) | PreToolUse hook that prevents AI agents from using --no-verify, --no-gpg-sign, and other bypass flags that skip git hooks | 1 skill, 1 command |
| [blockchain-web3](INDEX.md#blockchain-web3) | Smart contract development with Solidity, DeFi protocol implementation, NFT platforms, and Web3 application architecture | 1 agent |
| [brand-landingpage](INDEX.md#plugins-without-agents-ported-as-skills) | Guides developers from brand discovery through iterative design to deployment-ready HTML via Stitch | 1 skill |
| [business-analytics](INDEX.md#business-analytics) | Business metrics analysis, KPI tracking, financial reporting, and data-driven decision making | 1 agent |
| [c4-architecture](INDEX.md#c4-architecture) | Comprehensive C4 architecture documentation workflow with bottom-up code analysis, component synthesis, container mapping, and context diagram generation | 4 agents |
| [cicd-automation](INDEX.md#cicd-automation) | CI/CD pipeline configuration, GitHub Actions/GitLab CI workflow setup, and automated deployment pipeline orchestration | 5 agents |
| [cloud-infrastructure](INDEX.md#cloud-infrastructure) | Cloud architecture design for AWS/Azure/GCP/OCI, Kubernetes cluster configuration, Terraform infrastructure-as-code, hybrid cloud networking, and multi-cloud cost optimization | 7 agents |
| [code-documentation](INDEX.md#code-documentation) | Documentation generation, code explanation, and technical writing with automated doc generation and tutorial creation | 3 agents |
| [code-refactoring](INDEX.md#code-refactoring) | Code cleanup, refactoring automation, and technical debt management with context restoration | 2 agents |
| [codebase-cleanup](INDEX.md#codebase-cleanup) | Technical debt reduction, dependency updates, and code refactoring automation | 2 agents |
| [comprehensive-review](INDEX.md#comprehensive-review) | Multi-perspective code analysis covering architecture, security, and best practices | 3 agents |
| [conductor](INDEX.md#conductor) | Context-Driven Development plugin that transforms Claude Code into a project management tool with structured workflow: Context → Spec & Plan → Implement | 1 agent |
| [content-marketing](INDEX.md#content-marketing) | Content marketing strategy, web research, and information synthesis for marketing operations | 2 agents |
| [context-management](INDEX.md#context-management) | Context persistence, restoration, and long-running conversation management | 1 agent |
| [customer-sales-automation](INDEX.md#customer-sales-automation) | Customer support workflow automation, sales pipeline management, email campaigns, and CRM integration | 2 agents |
| [data-engineering](INDEX.md#data-engineering) | ETL pipeline construction, data warehouse design, batch processing workflows, and data-driven feature development | 2 agents |
| [data-validation-suite](INDEX.md#data-validation-suite) | Schema validation, data quality monitoring, streaming validation pipelines, and input validation for backend APIs | 1 agent |
| [database-cloud-optimization](INDEX.md#database-cloud-optimization) | Database query optimization, cloud cost optimization, and scalability improvements | 4 agents |
| [database-design](INDEX.md#database-design) | Database architecture, schema design, and SQL optimization for production systems | 2 agents |
| [database-migrations](INDEX.md#database-migrations) | Database migration automation, observability, and cross-database migration strategies | 2 agents |
| [debugging-toolkit](INDEX.md#debugging-toolkit) | Interactive debugging, developer experience optimization, and smart debugging workflows | 2 agents |
| [dependency-management](INDEX.md#dependency-management) | Dependency auditing, version management, and security vulnerability scanning | 1 agent |
| [deployment-strategies](INDEX.md#deployment-strategies) | Deployment patterns, rollback automation, and infrastructure templates | 2 agents |
| [deployment-validation](INDEX.md#deployment-validation) | Pre-deployment checks, configuration validation, and deployment readiness assessment | 1 agent |
| [developer-essentials](INDEX.md#developer-essentials) | Essential developer skills including Git workflows, SQL optimization, error handling, code review, E2E testing, authentication, debugging, and monorepo management | 1 agent |
| [dgx-spark-ops](INDEX.md#dgx-spark-ops) | NVIDIA DGX Spark (GB10 Grace Blackwell) environment operations: aarch64/CUDA-13 stack setup, training gotcha preflights, and unified-memory/thermal management for local ML workloads | 1 agent |
| [distributed-debugging](INDEX.md#distributed-debugging) | Distributed system tracing and debugging across microservices | 2 agents |
| [documentation-generation](INDEX.md#documentation-generation) | OpenAPI specification generation, Mermaid diagram creation, tutorial writing, API reference documentation | 5 agents |
| [documentation-standards](INDEX.md#plugins-without-agents-ported-as-skills) | HADS (Human-AI Document Standard) — semantic tagging convention for writing documentation that works efficiently for both human readers and AI models — plus the grounded-vault pattern: a raw/wiki/archive knowledge store with per-claim provenance links and git fingerprints for zero-token drift detection | 2 skills |
| [dotnet-contribution](INDEX.md#dotnet-contribution) | Comprehensive  | 1 agent |
| [error-debugging](INDEX.md#error-debugging) | Error analysis, trace debugging, and multi-agent problem diagnosis | 2 agents |
| [error-diagnostics](INDEX.md#error-diagnostics) | Error tracing, root cause analysis, and smart debugging for production systems | 2 agents |
| [file-conversion](INDEX.md#plugins-without-agents-ported-as-skills) | Convert common image, audio, video, document, and data formats with installed local tools while preserving originals | 1 skill |
| [framework-migration](INDEX.md#framework-migration) | Framework updates, migration planning, and architectural transformation workflows | 2 agents |
| [frontend-mobile-development](INDEX.md#frontend-mobile-development) | Frontend UI development and mobile application implementation across platforms | 2 agents |
| [frontend-mobile-security](INDEX.md#frontend-mobile-security) | XSS prevention, CSRF protection, content security policies, mobile app security, and secure storage patterns | 3 agents |
| [full-stack-orchestration](INDEX.md#full-stack-orchestration) | End-to-end feature orchestration with testing, security, performance, and deployment | 4 agents |
| [functional-programming](INDEX.md#functional-programming) | Functional programming with Elixir, OTP patterns, Phoenix framework, and distributed systems | 2 agents |
| [game-development](INDEX.md#game-development) | Unity game development with C# scripting, Minecraft server plugin development with Bukkit/Spigot APIs | 2 agents |
| [git-pr-workflows](INDEX.md#git-pr-workflows) | Git workflow automation, pull request enhancement, and team onboarding processes | 1 agent |
| [hermes-tweet](INDEX.md#plugins-without-agents-ported-as-skills) | Hermes Agent plugin for public X/Twitter research and approval-gated private or state-changing operations through Hermes Tweet | 1 skill |
| [hr-legal-compliance](INDEX.md#hr-legal-compliance) | HR policy documentation, legal compliance templates (GDPR/SOC2/HIPAA), employment contracts, and regulatory documentation | 2 agents |
| [incident-response](INDEX.md#incident-response) | Production incident management, triage workflows, and automated incident resolution | 6 agents |
| [javascript-typescript](INDEX.md#javascript-typescript) | JavaScript and TypeScript development with ES6+, Node | 2 agents |
| [julia-development](INDEX.md#julia-development) | Modern Julia development with Julia 1 | 1 agent |
| [jvm-languages](INDEX.md#jvm-languages) | JVM language development including Java, Scala, and C# with enterprise patterns and frameworks | 3 agents |
| [kubernetes-operations](INDEX.md#kubernetes-operations) | Kubernetes manifest generation, networking configuration, security policies, observability setup, GitOps workflows, and auto-scaling | 1 agent |
| [llm-application-dev](INDEX.md#llm-application-dev) | LLM application development with LangGraph, RAG systems, vector search, and AI agent architectures for Claude 4 | 3 agents |
| [llm-finetuning](INDEX.md#llm-finetuning) | Eval-gated LLM fine-tuning lifecycle: LoRA/QLoRA SFT, preference optimization (DPO/ORPO/KTO), GRPO/RLVR, vision SFT, and quantized export — Unsloth-first with TRL fallback, no eval harness means no fine-tune | 3 agents |
| [machine-learning-ops](INDEX.md#machine-learning-ops) | ML model training pipelines, hyperparameter tuning, model deployment automation, experiment tracking, and MLOps workflows | 3 agents |
| [meigen-ai-design](INDEX.md#meigen-ai-design) | AI image generation with creative workflow orchestration, parallel multi-direction output, prompt engineering, and a 1,300+ curated inspiration library | 3 agents |
| [multi-platform-apps](INDEX.md#multi-platform-apps) | Cross-platform application development coordinating web, iOS, Android, and desktop implementations | 6 agents |
| [observability-monitoring](INDEX.md#observability-monitoring) | Metrics collection, logging infrastructure, distributed tracing, SLO implementation, and monitoring dashboards | 4 agents |
| [operating-kit](INDEX.md#operating-kit) | Portable operating method: session lifecycle agents (session-start/end), pre-ship code review, deploy with live verification, and production log health check | 5 agents |
| [payment-processing](INDEX.md#payment-processing) | Payment gateway integration with Stripe, PayPal, checkout flow implementation, subscription billing, and PCI compliance | 1 agent |
| [performance-testing-review](INDEX.md#performance-testing-review) | Performance analysis, test coverage review, and AI-powered code quality assessment | 2 agents |
| [plugin-eval](INDEX.md#plugin-eval) | Static lint for Claude Code plugins and skills, with experimental LLM scoring for skills | 2 agents |
| [pptx-deck-creation](INDEX.md#pptx-deck-creation) | Create production-ready, editable PowerPoint decks through a spec-first, coordinate-explicit workflow with read-only reference analysis and quality gates | 1 agent |
| [protect-mcp](INDEX.md#protect-mcp) | Cedar policy enforcement + Ed25519 signed receipts for every Claude Code tool call | 2 agents |
| [python-development](INDEX.md#python-development) | Modern Python development with Python 3 | 3 agents |
| [quantitative-trading](INDEX.md#quantitative-trading) | Quantitative analysis, algorithmic trading strategies, financial modeling, portfolio risk management, and backtesting | 2 agents |
| [reverse-engineering](INDEX.md#reverse-engineering) | Binary reverse engineering, malware analysis, firmware security, and software protection research for authorized security research, CTF competitions, and defensive security | 3 agents |
| [review-agent-governance](INDEX.md#review-agent-governance) | Require a human approval signal before an AI agent can post PR reviews, comments, merges, or writes to CI config | 1 agent |
| [security-compliance](INDEX.md#security-compliance) | SOC2, HIPAA, and GDPR compliance validation, secrets scanning, compliance checklists, and regulatory documentation | 1 agent |
| [security-scanning](INDEX.md#security-scanning) | SAST analysis, dependency vulnerability scanning, OWASP Top 10 compliance, container security scanning, and automated security hardening | 2 agents |
| [seo-analysis-monitoring](INDEX.md#seo-analysis-monitoring) | Content freshness analysis, cannibalization detection, and authority building for SEO | 3 agents |
| [seo-content-creation](INDEX.md#seo-content-creation) | SEO content writing, planning, and quality auditing with E-E-A-T optimization | 3 agents |
| [seo-technical-optimization](INDEX.md#seo-technical-optimization) | Technical SEO optimization including meta tags, keywords, structure, and featured snippets | 4 agents |
| [shell-scripting](INDEX.md#shell-scripting) | Production-grade Bash scripting with defensive programming, POSIX compliance, and comprehensive testing | 2 agents |
| [ship-mate](INDEX.md#ship-mate) | Your AI development teammate | 6 agents |
| [signed-audit-trails](INDEX.md#plugins-without-agents-ported-as-skills) | Teaching skill: signed audit trails for Claude Code tool calls | 1 skill |
| [skill-forge-essentials](INDEX.md#plugins-without-agents-ported-as-skills) | Three behavioral skills addressing AI-specific failure patterns: hidden code debt from agent generation, context compaction amnesia, and imprecise Design Mode edits | 3 skills |
| [social-publishing](INDEX.md#social-publishing) | Schedule and publish social media posts across 13 platforms (X, LinkedIn Profile + Page, Instagram Business + Standalone, Facebook Pages, TikTok, Discord, Telegram, YouTube, Reddit, WordPress, Pinterest) via SocialClaw — one workspace API key covers everything | 1 agent |
| [startup-business-analyst](INDEX.md#startup-business-analyst) | Comprehensive startup business analysis with market sizing (TAM/SAM/SOM), financial modeling, team planning, and strategic research | 1 agent |
| [superself](INDEX.md#plugins-without-agents-ported-as-skills) | Drive the Superself `self` CLI: version control for a project's state — goals, decisions, work units, reports — kept as an append-only event log outside the code repo, so a session reads `self context` at start, attaches work to a unit, reports with evidence, and the next session picks up where this one left off | 1 skill |
| [systems-programming](INDEX.md#systems-programming) | Systems programming with Rust, Go, C, and C++ for performance-critical and low-level development | 4 agents |
| [tdd-workflows](INDEX.md#tdd-workflows) | Test-driven development methodology with red-green-refactor cycles and code review | 2 agents |
| [team-collaboration](INDEX.md#team-collaboration) | Team workflows, issue management, standup automation, and developer experience optimization | 1 agent |
| [ui-design](INDEX.md#ui-design) | Comprehensive UI/UX design plugin for mobile (iOS, Android, React Native) and web applications with design systems, accessibility, and modern patterns | 3 agents |
| [unit-testing](INDEX.md#unit-testing) | Unit and integration test automation for Python and JavaScript with debugging support | 2 agents |
| [web-scripting](INDEX.md#web-scripting) | Web scripting with PHP and Ruby for web applications, CMS development, and backend services | 2 agents |

## Install

```
/plugins install https://github.com/mnshkv/kimi-agents-plugin
```

## Usage

Ask for the specialist you need — by role, task, or agent name. Examples:

- "Use the backend architect agent to design the API for this service" → `backend-development-backend-architect`
- "Run a security audit on this codebase" → security agents from `security-scanning` / `backend-api-security`
- "Review this PR for performance issues" → `database-cloud-optimization` performance engineer or `comprehensive-review` reviewers
- "Coordinate a multi-agent team to implement this feature" → `team-lead` plus its worker agents
- "Set up commit quality gates so the agent can't use --no-verify" → `block-no-verify` skill

Browse [INDEX.md](INDEX.md) to find the right agent for a task. Agents are also discoverable by the host from their `description` and `whenToUse` fields.

## How it works

- Each file in `agents/` is a self-contained subagent definition: frontmatter (`name`, `description`, `whenToUse`, optional `tools`/`color`) plus a detailed system prompt. Kimi Code reads the frontmatter for routing and dispatches the body to a subagent via the `Agent` tool.
- `whenToUse` was derived from each agent's upstream description (the original "Use when …" / "Use PROACTIVELY when …" clause; generated from the first sentence where the upstream had none).
- The 11 upstream plugins that ship no agents contribute their skills and commands instead (14 skills under `skills/`, e.g. `avoid-ai-writing`, `hermes-tweet`, `file-conversion`, `skill-forge-essentials`).

## Differences from the original

- **Model tiers dropped.** Upstream agents declare a Claude model (`sonnet`/`opus`/`haiku`/`inherit`/`fable`). Kimi Code chooses the model, so the `model:` frontmatter field was removed; content is unchanged.
- **No hooks.** The upstream `block-no-verify` plugin is a Claude Code `PreToolUse` hook. Kimi Code has no hook mechanism, so it was converted into a skill: the agent self-enforces (never uses `--no-verify`/`--no-gpg-sign`) and can install an optional guard script (`skills/block-no-verify/scripts/block-git-bypass.sh`), which also works as a stdin filter in harnesses that do support hooks. Hook reference material is preserved in the `block-no-verify-hook` skill.
- **Commands → skills.** Slash commands (only `block-no-verify` among the ported plugins) became skills with the command's name, per Kimi Code conventions.
- **Tool references.** Agent prompts that mention Claude Code tools (Task, Grep, etc.) still read naturally under Kimi Code's equivalent toolset; `claude` CLI dependencies are not portable and are noted where they occur.
- **Not ported:** upstream's multi-harness adapters (Codex/Cursor/OpenCode/Copilot/Antigravity/Pi registries), evals, CI workflows, and `plugin.json` per-plugin metadata — Kimi Code needs only the consolidated plugin manifest. Per-plugin skills and commands in plugins that already have agents were left upstream to keep this plugin focused; they can be ported on demand.

## License & attribution

Upstream content is © Seth Hobson, released under the [MIT License](LICENSE) (see [wshobson/agents](https://github.com/wshobson/agents)). This port is © mnshkv, also MIT. Original agent prompts and skill bodies are preserved verbatim (modulo the adaptations listed above).
