#import "swat.typ": alphalist, governing-doc, org, orgshort

// Cross-document references.
// Typst cannot resolve a label in a separate document, so constitution numbering
// is written by hand HERE AND NOWHERE ELSE. Update these if the constitution is
// amended in a way that renumbers its articles.
#let const-bylaws = [Article XIV] // Constitution: Bylaws
#let const-ip = [Article XI] // Constitution: Intellectual Property
#let const-active-member = [Article IV, Section 2] // Constitution: Active Membership

#show: governing-doc.with(title: [Bylaws of the #org])

// ==============================================================================
= Purpose and Authority of the Bylaws <art-bylaws-purpose>
== Authority and Amendment <sec-bylaws-authority>
These bylaws implement the operational practices of #orgshort under the authority granted by
#const-bylaws of the constitution. Where these bylaws and the constitution conflict, the
constitution governs. These bylaws may be adopted or amended by a majority vote of the active
members present at any regular meeting, quorum having been established, provided the proposed
change has been distributed to the membership at least one (1) regular meeting in advance.

// ==============================================================================
= Definitions <art-definitions>
== Good Standing <sec-good-standing>

=== \#TODO
Tentatively defined simply as good standing with the university. 

// ==============================================================================
= Membership Ladder <art-ladder>
== Roles <sec-ladder-roles>
The membership ladder recognizes a member's growing experience and serves as the organization's
leadership pipeline. The roles, in order, are:
#alphalist(
  [*Contributor.* Any active member working on a project team. Contributors write
  code, build features, and document their work.],
  [*Maintainer.* An experienced member who, in addition to contributing, owns code
  quality and architecture on a team, reviews pull requests, and helps configure and enforce
  the team's repository practices.],
  [*Project Lead.* A member who owns the delivery of a project, coordinates the
  team, and reports to the Director of Projects.],
)
== Advancement <sec-ladder-advancement>
Advancement is earned by demonstrated track record across projects, not by a fixed timeline. A
member may be nominated for advancement by a Project Lead or by the Director of Projects, and
the advancement is confirmed by the Director of Projects. The ladder feeds directly into the
organization's officer pipeline.

// ==============================================================================
= Project Lifecycle <art-lifecycle>
== Stages <sec-lifecycle-stages>
Every project advances through five stages under the oversight of the Director of Projects:
#alphalist(
  [*Pitch.* A member proposes a problem statement, why it matters, and a rough
  scope.],
  [*Scope.* The team defines requirements, selects a technology stack, sets
  milestones, forms the team, and initializes the repository and documentation.],
  [*Build.* The team works in iterative sprints using version control, code review,
  and regular check-ins.],
  [*Defended Review.* The team presents the project and is questioned on its
  language, architecture, tooling, version control practices, and results, as described in
  @art-reviews.],
  [*Retrospective.* The team captures what worked, what did not, and lessons
  learned, and archives the project's artifacts.],
)

// ==============================================================================
= Project Teams and Roles <art-teams>
== Formation <sec-team-formation>
Project teams are self-organized. Members form teams around pitches according to their
interests. The Director of Projects places any member who is not yet on a team and may help
balance teams so that less-experienced members are paired with experienced ones.
== Team Roles <sec-team-roles>
Each team includes a Project Lead and one or more Maintainers, with the remaining
members serving as Contributors. All members of a team, regardless of role, may write code and
push changes to the team's repository.
== Repository Standards <sec-repo-standards>
Each team is responsible for configuring branch protection and a sound version control workflow
for its repository. Repositories must be set up and maintained to a professional standard,
including a clear branching strategy, meaningful commit history, pull-request review, and
complete documentation. The quality of a team's repository and workflow is assessed as part of
its Defended Review.

// ==============================================================================
= Defended Reviews <art-reviews>
== Format <sec-review-format>
At a Defended Review, a panel (composed of officers and the advisor, and later including alumni
and industry guests) questions the team against a written rubric. After the panel, any member
present is free to ask questions, and the team's responses are considered in the assessment. A
Defended Review is not a competition; there are no winners. Its purpose is to give each team
structured, substantive feedback on where to improve, rather than a subjective verdict on the
idea.
== Rubric <sec-review-rubric>
The rubric shall assess, at minimum:
#alphalist(
  [code quality and correctness;],
  [repository and version control practices, including branching, commit history,
  pull-request review, and branch protection;],
  [architecture and design decisions;],
  [choice and justification of tools and libraries;],
  [documentation, including the README and architecture notes;],
  [results and outcomes; and],
  [the team's ability to clearly explain and defend its decisions.],
)

// ==============================================================================
= Knowledge Sessions <art-knowledge>
== Format and Rotation <sec-knowledge-format>
A portion of regular weekly meetings shall be reserved for a member-led knowledge session: a
talk on a tool, library, platform, or emerging technology. Members sign up for sessions on a
rotation maintained by the Director of Projects or the Secretary. Delivering a knowledge
session satisfies the participation requirement for active membership defined in
#const-active-member of the constitution.

// ==============================================================================
= Intellectual Property and Repositories <art-ip>
== Default License <sec-default-license>
Every project repository shall carry an open source license file, added during the Scope stage.
The organization's default license is the Apache License, Version 2.0, which preserves the
contributors' ownership, requires attribution, and includes an express patent grant. A team may
adopt a different license with the approval of the Director of Projects, provided the license is
compatible with the licenses of the project's dependencies.
== Contributor Acknowledgment <sec-contributor-ack>
Before contributing to a project team, each member signs a one-page contributor acknowledgment
recording that the member retains ownership of their work and grants #orgshort the
non-exclusive license described in #const-ip of the constitution. The acknowledgment is signed
once, may be signed electronically, and is retained by the Secretary. A member who declines to
sign may still attend meetings, deliver knowledge sessions, and participate in all other
activities of the organization.
== Custody and Access <sec-repo-custody>
Project repositories are hosted in the #orgshort organization account. The Director of Projects
and the President hold administrative access. Project Leads hold maintainer access to their own
team's repository. Contributors hold write access as described in @art-teams.
== Repository Panel <sec-repo-panel>
Deleting a repository, making it private, transferring it out of the organization account, or
otherwise restricting access to it requires the approval of a Repository Panel, consisting of the
Director of Projects, the President, and the Project Lead of the project in question, with notice
to the advisor. The Panel acts by majority vote and shall give the project's contributors at
least seven (7) days written notice before acting. No individual member, including an officer,
may take any of these actions alone. Archiving an inactive project is preferred to deleting it,
and archiving requires only the decision of the Director of Projects.
== Forking and Commercialization <sec-forking>
A contributor who wishes to fork a project and pursue it independently or commercially may do so
at any time and owes #orgshort nothing. The contributor remains bound by the project's open
source license, including its attribution requirements, and by the rights of their fellow
contributors in the work. The name, logo, and identity of #orgshort are not licensed with the
code and may not be used to represent or endorse an independent or commercial fork.
== Permitted Contributions <sec-permitted-contributions>
A member may contribute only work that the member has the right to contribute. Members shall not
contribute code owned by an employer, code produced for academic credit in a course, or code
carrying a license incompatible with the project's own license. Teams are responsible for
tracking the licenses of their dependencies and recording them in the repository.
== Client and Sponsored Work <sec-client-work>
Any project undertaken for an external client or sponsor shall be governed by a written agreement
reviewed by the advisor before work begins, and the terms of that agreement govern ownership and
licensing for that project. No officer or member may sign an agreement purporting to bind
Kennesaw State University.
== Personal Projects <sec-personal-projects>
Work a member creates outside a #orgshort project team is entirely the member's own. Presenting
a personal project at a meeting, in a knowledge session, or at a Defended Review grants
#orgshort no rights in it.

// ==============================================================================
= Use of AI Tools <art-ai>
== Disclosure <sec-ai-disclosure>
AI tools are permitted. A member who uses one to produce a contribution shall record, in the
pull request that introduces the work, the model used and the prompts given, each with the date
and time of use.
== Explaining Contributions <sec-ai-explanation>
A member shall be able to explain any contribution they submit. A Project Lead or the Director
of Projects may ask a member to explain their own work at any time.
== Repeated Failures <sec-ai-failures>
A member who cannot explain a contribution, or who submits work well below the standards of
@art-teams, @sec-repo-standards, shall receive written notice from the
Director of Projects stating the reason. On the third notice within an academic year, the member
may not contribute to project repositories for one (1) semester. The member remains an active
member throughout and may attend meetings, vote, hold office, and deliver knowledge sessions.
Contribution rights return at the end of that semester.

// ==============================================================================
= Sectors (Reserved for Future Use) <art-sectors>
== Future Sectors <sec-future-sectors>
The organization may, in the future, establish sectors (standing tracks organized around a
discipline such as cybersecurity, game design, or quantitative finance), each led by a sector
lead or director. Sectors are intentionally not defined at this time. A sector should be
created only once a track has enough sustained, active members to justify a standing lead. When
that threshold is reached, a sector and its leadership may be established by a bylaws amendment
under @art-bylaws-purpose, without amending the constitution.

// ==============================================================================
= Amendment of the Bylaws <art-bylaws-amendment>
== Amendment Process <sec-amendment-process>
These bylaws may be amended as described in @art-bylaws-purpose,
@sec-bylaws-authority: by a majority vote of the active members present at any
regular meeting, quorum having been established, provided the proposed change has been
distributed to the membership at least one (1) regular meeting in advance.
