\# If AI Agents Start Hiring Each Other, How Do They Verify Work and Settle Payment?



如果未来 AI Agents 不只是回答问题、执行命令，而是开始彼此调用服务、彼此雇佣、彼此交易，那么一个很现实的问题就会出现：它们如何确认工作已经完成？又如何在不依赖单一平台担保的情况下完成付款？



If AI agents eventually do more than answer prompts or execute commands—if they begin to call each other’s services, hire each other, and transact with each other—then a very practical question emerges: how do they verify that work has actually been completed, and how do they settle payment without relying on a single trusted platform?



我最近更倾向于一个克制但现实的方向：与其一开始就谈宏大的 “Agent Economy”，不如先解决一个更基础的问题——为 AI Agents 提供一层“可编程托管 + 可验证交付 + 条件结算”的机制。



Lately, I’ve been leaning toward a more restrained but practical direction: instead of jumping straight to a grand vision of an “agent economy,” it may be wiser to solve a more basic problem first—a programmable mechanism for escrow, verifiable delivery, and conditional settlement for AI agents.



这不是要把所有 AI 服务都搬上链，更不是为了上链而上链。它要解决的是一个更具体的问题：当两个 Agents 跨平台、跨组织、甚至跨地区协作时，如果它们之间没有一个共同信任的平台，那么谁来托管资金、验证结果，并在条件满足后自动完成结算？



This is not about putting every AI service on-chain, and it is definitely not about using blockchain for its own sake. It addresses a narrower question: when two agents collaborate across platforms, organizations, or even jurisdictions, and there is no shared trusted intermediary, who should hold the funds, verify delivery, and release payment once the agreed conditions are met?



\## A Practical Proposal



\## 一个更现实的提案



这个机制其实可以很简单。Agent A 向 Agent B 发起服务请求，例如抓取数据、执行规则明确的任务、生成固定格式内容，或者提交可校验的执行结果。关键不只是约定价格，而是提前约定服务范围、验证标准和结算规则。



The mechanism can start simple. Agent A requests a service from Agent B—for example, retrieving data, executing a rule-based task, generating structured output, or submitting a verifiable result. The key is not just agreeing on the price, but also agreeing in advance on the scope of work, the verification criteria, and the settlement rules.



然后，资金不直接打给服务方，而是先锁进一个中立的托管合约。这样做的意义，不在于“自动支付”本身，而在于先锁定支付能力，避免服务方交付后收不到钱，也避免需求方先付款后拿不到结果，把“是否付款”从主观争执变成规则执行。



Then, instead of paying the service provider directly, the funds are locked into a neutral escrow contract. The point is not “automated payment” by itself. The real value is to secure the buyer’s commitment, protect the provider from non-payment, protect the buyer from paying before delivery, and turn payment release from subjective negotiation into rule execution.



服务完成后，Agent B 提交结果，系统再根据预设条件进行验证。这里最关键的一点是：不是所有 AI 服务都适合自动验证。初期真正适合落地的，只能是那些可机器验证的任务，而不是一开始就覆盖所有复杂场景。



Once the service is completed, Agent B submits the result, and the system verifies it against the predefined conditions. This is the most important point: not every AI service is suitable for automated verification. In the early stage, only machine-verifiable tasks are realistic candidates, rather than trying to cover every complex scenario from day one.



比如，系统可以检查结果是否在规定时间内返回，输出格式是否符合约定，是否满足明确阈值或规则，是否附带可校验日志、哈希、Proof 或执行记录。这类任务交付标准清晰、验证成本低、争议空间小，因此更适合作为第一批落地对象。



For example, the system can check whether the result was returned within the required time, whether the output matches the agreed format, whether it meets a clear threshold or rule, and whether it includes auditable logs, hashes, proofs, or execution records. These tasks have clear deliverables, low verification cost, and limited room for dispute, making them strong candidates for early implementation.



如果验证通过，托管合约自动放款；如果验证失败，或超时未完成，则自动退款或按预设规则部分结算。真正自动化的，不只是付款本身，而是托管、验证触发和条件式释放资金。



If verification succeeds, the escrow contract releases payment automatically. If verification fails, or if the task times out, the funds are refunded or partially settled according to the predefined rules. What gets automated is not payment alone, but escrow, verification-triggered release, and conditional settlement.



\## Why This Matters



\## 为什么这个方向值得做



未来 Agent 与 Agent 之间的协作，真正的瓶颈很可能不是调用能力，而是可信结算能力。今天的平台模式当然能解决一部分问题，但它天然依赖中心化担保方，跨平台协作成本高，跨组织协作缺少统一规则，支付、验证、争议处理也都被锁在各自系统内部。



In future agent-to-agent collaboration, the real bottleneck may not be service invocation, but trusted settlement. Today’s platform model does solve part of the problem, but it depends on centralized guarantors, makes cross-platform collaboration expensive, lacks shared rules across organizations, and keeps payment, verification, and dispute handling locked inside separate systems.



如果 Agents 要在更开放的环境中协作，就需要一个更底层的机制来回答几个基本问题：谁来先托管资金？谁来判断结果是否合格？条件满足后谁来执行付款？出现超时、异常、失败时又该如何收场？



If agents are going to operate in a more open environment, then a lower-layer mechanism is needed to answer a few basic questions: who holds the funds before the job is done, who decides whether the result is acceptable, who releases payment when conditions are met, and what happens in case of timeout, failure, or ambiguity?



所以，真正重要的不是“支付自动化”，而是“可编程托管”。因为在开放协作场景里，支付只是最后一步，前面的验证和规则执行才是关键。



That is why programmable escrow matters more than payment automation. In open collaboration scenarios, payment is only the final step; verification and rule execution are the real core.



\## Not Every AI Service Belongs On-Chain



\## 不是所有 AI 服务都适合上链结算



这一点必须说清楚。我并不认为所有 Agent 服务都应该做成链上自动结算。真正适合第一阶段落地的，只是一小类任务：数据抓取、数据清洗、格式转换、固定模板生成、规则明确的 API 调用、可校验计算任务。



This must be stated clearly. I do not believe every agent service should become an on-chain auto-settlement workflow. Only a narrow category is suitable for the first phase: data retrieval, data cleaning, format conversion, fixed-template generation, rule-based API execution, and provable computation tasks.



还有一类是“部分可验证服务”，例如检索摘要、多步推理输出、执行过程较长的链上或链下任务。这类服务不是不能做，但通常要引入更多机制，例如多 Agent 复核、抽样审计、声誉评分，甚至人工兜底仲裁。



There is also a category of partially verifiable services, such as retrieval summaries, multi-step reasoning outputs, and longer on-chain or off-chain workflows. These are still possible, but they usually require additional mechanisms, such as multi-agent review, sampling-based audits, reputation weighting, or even human fallback arbitration.



至于创意写作、品牌策略、复杂咨询判断这类高度主观的服务，至少在早期，并不适合做成完全自动结算。问题不在付款，而在“结果到底算不算好”本身就无法被客观定义。



As for highly subjective services—creative writing, branding strategy, complex consulting judgment—they are poor candidates for fully automated settlement, at least in the early stage. The issue is not payment; it is that the quality of the result itself cannot be objectively defined.



所以，现实路径不是一上来就追求完整的 Agent Economy，而是先把那些可验证、低争议、高频的小任务跑通。



So the realistic path is not to pursue a full agent economy from the start, but to make small, repetitive, low-dispute, verifiable tasks work first.



\## What Blockchain Actually Solves



\## 区块链在这里真正解决什么问题



很多人听到这个提案，第一反应会是：为什么不用 Stripe、PayPal、支付宝，或者一个中心化平台来做？这个问题非常关键。如果回答不了，整件事就会变成“为了区块链而区块链”。



A fair reaction to this proposal is: why not just use Stripe, PayPal, Alipay, or a centralized marketplace? This question is critical. If there is no strong answer, the whole proposal becomes blockchain for blockchain’s sake.



我认为，链在这里真正解决的，不是“支付”本身。传统系统早就能做支付。链更适合解决的是：中立托管、可编程结算、可审计记录，以及开放环境中的可组合性。



In my view, blockchain does not primarily solve payment itself. Traditional systems already do that well. What blockchain is better suited for here is neutral escrow, programmable settlement, auditable records, and composability in open environments.



当双方不属于同一个平台时，链上托管可以提供一个相对中立的规则执行环境；结算规则可以直接写成可执行逻辑，而不是依赖人工审核；服务约定、验证结果和结算动作都可以留下可审计记录；如果未来不同 Agents、钱包、协议、服务市场要互相协作，一个开放的结算层也比封闭平台更有扩展性。



When the two parties do not belong to the same platform, on-chain escrow can provide a relatively neutral rule-execution environment; settlement conditions can be encoded directly rather than relying on human review; the service agreement, verification outcome, and settlement actions can all leave auditable records; and if agents, wallets, protocols, and service marketplaces are to interoperate in the future, an open settlement layer may scale better than isolated platform silos.



所以，关键不是“AI + Blockchain 很酷”，而是：当 Agents 跨域协作，又缺少共同信任平台时，可编程托管会成为一种必要的基础设施。



So the real point is not that “AI plus blockchain sounds futuristic,” but that when agents transact across domains without a shared trusted platform, programmable escrow becomes useful infrastructure.



\## Start Narrow, Not Grand



\## 初期实现，应该收得更窄



如果真要开始做，我反而建议第一版尽量克制：只支持少量高确定性任务，只做单链托管，不急着跨链，把验证规则做得尽量简单明确，同时保留人工仲裁作为兜底机制。



If this were to be built, I would argue for a deliberately narrow first version: support only a small number of high-certainty task types, use single-chain escrow rather than cross-chain complexity, keep verification logic as simple and explicit as possible, and retain human arbitration as a fallback.



一个现实的 MVP 可能非常简单：Agent A 发单，资金锁进托管合约，Agent B 提交结果，预定义验证器检查输出，通过则放款，失败则退款，超时则回滚。先把这条最短链路跑通，比一开始就谈 DAO、复杂治理和全自动争议解决更有意义。



A realistic MVP could be very simple: Agent A creates a job, funds are locked in escrow, Agent B submits a result, a predefined verifier checks the output, success releases payment, failure refunds, and timeout rolls back the transaction. Getting this shortest loop to work matters far more than prematurely introducing DAO governance, complex dispute systems, or fully automated conflict resolution.



\## The Real Difficulty



\## 真正的难点



从工程角度看，付款并不难，难的是围绕付款的那一整套问题：谁来定义“完成”？谁来提供验证输入？谁对错误验证负责？链下事实如何可信进入链上？出现争议时是否允许人工介入？Agent 背后的责任主体又是谁？



From an engineering perspective, payment is not the hard part. The hard part is everything around it: who defines what “done” means, who supplies the verification input, who is responsible for incorrect verification, how off-chain facts enter an on-chain system credibly, whether human intervention is allowed in disputes, and who the legally responsible entity is behind an agent.



说得更直接一点，Agent 经济真正困难的，不是 transfer money，而是 verify work。我更愿意把这个方向定义为“面向 AI Agents 的可验证结算基础设施”，而不是一个空泛的“自治经济体系”。



Put more directly, the real challenge of agent commerce is not transferring money—it is verifying work. That is why I prefer to frame this direction as verifiable settlement infrastructure for AI agents, rather than as a vague “autonomous economy.”



\## A More Realistic Outlook



\## 一个更现实的判断



未来几年里，最先跑出来的，未必是一个“完全自治的 Agent 社会”，而更可能是一些看起来普通、但极有价值的场景：数据型 Agents 之间的自动服务采购、工具型 Agents 之间的按次调用结算、链上任务执行与结果回执结算，以及面向开放服务市场的微型托管机制。



Over the next few years, the first real successes will probably not look like a fully autonomous agent society. They will likely look much more ordinary—but much more useful: automatic procurement between data-oriented agents, per-call settlement between tool agents, execution-and-receipt workflows for on-chain tasks, and micro-escrow mechanisms for open service marketplaces.



这些东西看起来不宏大，但更接近真正能落地的基础设施。一旦“验证—托管—结算”这条链路跑顺，后面的声誉系统、保险池、争议治理、跨链协作，才有继续叠加的基础。



These may not sound grand, but they are much closer to real infrastructure. Once the chain of verification, escrow, and settlement becomes reliable, then reputation systems, insurance pools, dispute governance, and cross-chain coordination can be layered on top.



如果 AI Agents 真的开始彼此雇佣、彼此交易，那么我们最先需要建设的，也许并不是一个更大的平台，而是一种更基础的能力：让资金先被安全托管，让工作结果可以被验证，让付款在条件满足时自动发生。



If AI agents do begin hiring and transacting with each other, then perhaps the first thing we need is not a bigger platform, but a more basic capability: a way to lock funds safely, verify that work was delivered, and release payment only when the agreed conditions are met.



这可能不是最热闹的叙事，但它更接近真正能落地的基础设施。



That may not be the loudest narrative, but it is much closer to something that can actually be built.

