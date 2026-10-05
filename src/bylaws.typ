#import "swat.typ": alphalist, cross-ref, governing-doc, org, orgshort

#show: governing-doc.with(title: [Bylaws of the #org])

= Purpose and Authority of the Bylaws <art-bylaws-purpose>

== Authority and Amendment <sec-bylaws-authority>

These bylaws implement the operational practices of #orgshort under the authority granted by #cross-ref("constitution", "art-bylaws") of the constitution. Where these bylaws and the constitution conflict, the constitution governs. These bylaws may be adopted or amended by a majority vote of the active members present at any regular meeting, quorum having been established, provided the proposed change has been distributed to the membership at least one (1) regular meeting in advance.


= Definitions

== Good Standing <sec-good-standing>

=== \#TODO
Tentatively defined simply as good standing with the university.

= Membership Ladder

== Roles

The membership ladder recognizes a member's growing experience and serves as the organization's leadership pipeline. The roles, in order, are:

#alphalist[
  1. / Contributor: Any active member working on a project team. Contributors write code, build features, and document their work.

  2. / Maintainer: An experienced member who, in addition to contributing, owns code quality and architecture on a team, reviews pull requests, and helps configure and enforce the team's repository practices.

  3. / Project Lead: A member who owns the delivery of a project, coordinates the team, and reports to the Director of Projects.
]

== Advancement

Advancement is earned by demonstrated track record across projects, not by a fixed timeline. A member may be nominated for advancement by a Project Lead or by the Director of Projects, and the advancement is confirmed by the Director of Projects. The ladder feeds directly into the organization's officer pipeline.

= Project Lifecycle

== Stages

Every project advances through five stages under the oversight of the Director of Projects:

#alphalist[
  1. / Pitch: A member proposes a problem statement, why it matters, and a rough scope.

  2. / Scope: The team defines requirements, selects a technology stack, sets milestones, forms the team, and initializes the repository and documentation.

  3. / Build: The team works in iterative sprints using version control, code review, and regular check-ins.

  4. / Defended Review: The team presents the project and is questioned on its language, architecture, tooling, version control practices, and results, as described in @art-reviews.

  5. / Retrospective: The team captures what worked, what did not, and lessons learned, and archives the project's artifacts.
]

= Project Teams and Roles <art-teams>

== Formation

Project teams are self-organized. Members form teams around pitches according to their interests. The Director of Projects places any member who is not yet on a team and may help balance teams so that less-experienced members are paired with experienced ones.

== Team Roles

Each team includes a Project Lead and one or more Maintainers, with the remaining members serving as Contributors. All members of a team, regardless of role, may write code and push changes to the team's repository.

== Repository Standards <sec-repo-standards>

Each team is responsible for configuring branch protection and a sound version control workflow for its repository. Repositories must be set up and maintained to a professional standard, including a clear branching strategy, meaningful commit history, pull-request review, and complete documentation. The quality of a team's repository and workflow is assessed as part of its Defended Review.

= Defended Reviews <art-reviews>

== Format

At a Defended Review, a panel (composed of officers and the advisor, and later including alumni and industry guests) questions the team against a written rubric. After the panel, any member present is free to ask questions, and the team's responses are considered in the assessment. A Defended Review is not a competition; there are no winners. Its purpose is to give each team structured, substantive feedback on where to improve, rather than a subjective verdict on the idea.

== Rubric

The rubric shall assess, at minimum:

#alphalist[
  1. code quality and correctness;

  2. repository and version control practices, including branching, commit history, pull-request review, and branch protection;

  3. architecture and design decisions;

  4. choice and justification of tools and libraries;

  5. documentation, including the README and architecture notes;

  6. results and outcomes; and

  7. the team's ability to clearly explain and defend its decisions.
]

= Knowledge Sessions

== Format and Rotation

A portion of regular weekly meetings shall be reserved for a member-led knowledge session: a talk on a tool, library, platform, or emerging technology. Members sign up for sessions on a rotation maintained by the Director of Projects or the Secretary. Delivering a knowledge session satisfies the participation requirement for active membership defined in #cross-ref("constitution", "sec-active-membership") of the constitution.

= Intellectual Property and Repositories

== Default License

Every project repository shall carry an open source license file, added during the Scope stage. The organization's default license is the Apache License, Version 2.0, which preserves the contributors' ownership, requires attribution, and includes an express patent grant. A team may adopt a different license with the approval of the Director of Projects, provided the license is compatible with the licenses of the project's dependencies.

== Contributor Acknowledgment

Before contributing to a project team, each member signs a one-page contributor acknowledgment recording that the member retains ownership of their work and grants #orgshort the non-exclusive license described in #cross-ref("constitution", "art-ip") of the constitution. The acknowledgment is signed once, may be signed electronically, and is retained by the Secretary. A member who declines to sign may still attend meetings, deliver knowledge sessions, and participate in all other activities of the organization.

== Custody and Access

Project repositories are hosted in the #orgshort organization account. The Director of Projects and the President hold administrative access. Project Leads hold maintainer access to their own team's repository. Contributors hold write access as described in @art-teams.

== Repository Panel

Deleting a repository, making it private, transferring it out of the organization account, or otherwise restricting access to it requires the approval of a Repository Panel, consisting of the Director of Projects, the President, and the Project Lead of the project in question, with notice to the advisor. The Panel acts by majority vote and shall give the project's contributors at least seven (7) days written notice before acting. No individual member, including an officer, may take any of these actions alone. Archiving an inactive project is preferred to deleting it, and archiving requires only the decision of the Director of Projects.

== Forking and Commercialization

A contributor who wishes to fork a project and pursue it independently or commercially may do so at any time and owes #orgshort nothing. The contributor remains bound by the project's open source license, including its attribution requirements, and by the rights of their fellow contributors in the work. The name, logo, and identity of #orgshort are not licensed with the code and may not be used to represent or endorse an independent or commercial fork.

== Permitted Contributions

A member may contribute only work that the member has the right to contribute. Members shall not contribute code owned by an employer, code produced for academic credit in a course, or code carrying a license incompatible with the project's own license. Teams are responsible for tracking the licenses of their dependencies and recording them in the repository.

== Client and Sponsored Work

Any project undertaken for an external client or sponsor shall be governed by a written agreement that, before work begins, has been reviewed by the advisor and has received any review and authorization required by University policy. Advisor review alone does not authorize the organization to enter an agreement. The terms of that agreement govern ownership and licensing for that project. No officer or member may sign an agreement purporting to bind Kennesaw State University.

== Personal Projects

Work a member creates outside a #orgshort project team is entirely the member's own. Presenting a personal project at a meeting, in a knowledge session, or at a Defended Review grants #orgshort no rights in it.

= Use of AI Tools

== Disclosure

AI tools are permitted. A member who uses one to produce a contribution shall record, in the pull request that introduces the work, the model used and the prompts given, each with the date and time of use.

== Explaining Contributions

A member shall be able to explain any contribution they submit. A Project Lead or the Director of Projects may ask a member to explain their own work at any time.

== Repeated Failures

A member who cannot explain a contribution, or who submits work well below the standards of @sec-repo-standards, shall receive written notice from the Director of Projects stating the reason. On the third notice within an academic year, the member may not contribute to project repositories for one (1) semester. The member remains an active member throughout and may attend meetings, vote, hold office, and deliver knowledge sessions. Contribution rights return at the end of that semester.

= Sectors (Reserved for Future Use)

== Future Sectors

The organization may, in the future, establish sectors (standing tracks organized around a discipline such as cybersecurity, game design, or quantitative finance), each led by a sector lead or director. Sectors are intentionally not defined at this time. A sector should be created only once a track has enough sustained, active members to justify a standing lead. When that threshold is reached, a sector and its leadership may be established by a bylaws amendment under @art-bylaws-purpose, without amending the constitution.

= Amendment of the Bylaws

== Amendment Process

These bylaws may be amended as described in @sec-bylaws-authority: by a majority vote of the active members present at any regular meeting, quorum having been established, provided the proposed change has been distributed to the membership at least one (1) regular meeting in advance.
