#import "swat.typ": alphalist, governing-doc, num, org, orgshort, romanlist

// Cross-document references.
// typst cannot resolve a label in a separate document, so bylaws numbering is
// written by hand HERE AND NOWHERE ELSE. Please update if bylaws are re-numbered
#let bylaws-good-standing = [Article II, Section 1]

#show: governing-doc.with(title: [Constitution of the #org])

// ==============================================================================
= Name <art-name> // Required
== Organization Name <sec-org-name>
The name of this organization shall be the #org, hereafter referred to in this document as
#orgshort.

// ==============================================================================
= Purpose or Mission Statement <art-purpose> // Required
== Mission and Objectives <sec-mission>
The purpose of this organization shall be to give students in computing and related fields
(including computer science, software engineering, cybersecurity, game design, and quantitative
finance) a space to gain practical, real-world engineering experience beyond the classroom.
#orgshort exists to:
#alphalist(
  [organize ongoing, longer-form team projects in which members practice professional
  software engineering workflows, including version control, code review, DevOps practices,
  and technical documentation;],
  [develop members into strong candidates for competitive roles through regular
  presentations in which they explain and defend their technical decisions: languages,
  architecture, tools, libraries, version control practices, and results;],
  [educate members through knowledge sessions on tools, libraries, platforms, and
  emerging technologies; and],
  [connect members with industry and with other Kennesaw State University organizations
  through real projects, partnerships, and client work.],
)

// ==============================================================================
= Affiliations <art-affiliations> // Required
== Kennesaw State University <sec-ksu-affiliation> // Include verbatim
#romanlist(
  [This organization is a Registered Student Organization (RSO) at Kennesaw State
  University, but is not part of the University itself.],
  [In all correspondence and publications, it may refer to itself as an organization at
  Kennesaw State University, but not as part of Kennesaw State University itself.],
  [#org accepts full financial and production responsibility for all activities
  it sponsors.],
  [#org agrees to abide by all pertinent Kennesaw State University policies and
  regulations, including the most current RSO Manual and Student Codes of Conduct.
  Where Kennesaw State University policies and regulations and those of #orgshort differ,
  the policies and regulations of Kennesaw State University will take precedence.],
  [#org recognizes and understands that the University assumes no legal liability
  for the actions of the organization.],
)
== External Affiliations <sec-external-affiliation>
#orgshort is not currently affiliated with any state or national non-student entity.

// ==============================================================================
= Membership <art-membership> // Required
== Eligibility <sec-eligibility>
This organization is open to all KSU students, regardless of major, who are in good standing
with the University, as that term is defined in #bylaws-good-standing of the bylaws.
Students must be enrolled in at least one (1) credit hour
at Kennesaw State University to be considered a member.
Non-KSU students may participate in and be affiliated with the organization,
but will not be recognized as full members with voting rights.
== Active Membership <sec-active-membership>
Active members of #orgshort are required, each semester, to attend at least fifty percent
(50%) of general meetings and to either contribute to an active project team or deliver
at least one presentation or knowledge session. #orgshort does not charge membership dues.
== Privileges and Voting <sec-privileges>
Active members are entitled to vote in elections and on organization business, to hold officer
positions, to serve on and lead committees, to join and lead project teams, and to access
organization resources and events.
Each member has one vote, no matter how many officer, committee, or project roles the member
holds. A candidate for office may vote in their own election.
== Removal of Members <sec-member-removal>
A member may be removed for conduct that materially harms the organization or for repeated
failure to meet the responsibilities of membership. Removal requires written notice to the
member, an opportunity for the member to respond before the Executive Board, and a two-thirds
(2/3) vote of the Executive Board. A removed member may appeal to the general membership,
where a majority vote of active members present, quorum having been established, is final.
== Alumni <sec-alumni>
Alumni of #orgshort are former active members who have graduated from Kennesaw State
University. Alumni may continue to participate in organization events and activities, but do
not have voting rights or officer eligibility. They are encouraged to mentor current members,
to serve on Defended Review panels, and to connect members with industry.

#v(1em)
#par(first-line-indent: 0pt)[
  _"Please note that RSOs cannot hold members accountable to the Student Codes
  of Conduct, Title IX, or any other campus policies. Any such incidents shall be reported to
  the appropriate University entity so that the appropriate adjudication process may occur."_
]

// ==============================================================================
= Officers or Executive Board <art-officers> // Required
== Officers and Duties <sec-officer-duties>
The officers of this organization, who together constitute the Executive Board, shall be
the President, Vice President, Treasurer, Secretary, Director of Projects,
and Director of Outreach.
#alphalist(
  [*President.* The President shall be responsible for leading all organization
  meetings, monitoring the performance of all other officers, representing the organization
  to the University and external parties, and serving as the chief executive officer.
  The President shall be listed as President in Owl Life.],
  [*Vice President.* The Vice President shall assume all responsibilities of
  the President in the case of the President's absence, shall assist the President in the
  performance of their duties, and shall serve as the Reservation Delegate for the
  organization in Owl Life, with authority to make space reservations on behalf of the
  organization.],
  [*Treasurer.* The Treasurer shall be responsible for all financial activity
  of the organization, including maintaining an accurate balance of the organization's
  finances, managing any budget or funding, and serving as a fiduciary for the organization.
  The Treasurer shall be listed as Treasurer in Owl Life.],
  [*Secretary.* The Secretary shall be responsible for taking minutes at all
  organization meetings, dispatching official correspondence, notifying members of meetings,
  and maintaining organization documents, records, and communication channels.],
  [*Director of Projects.* The Director of Projects shall oversee the project
  lifecycle (pitch, scoping, build sprints, defended review, and retrospective), shall
  appoint and support project leads, and shall maintain the organization's engineering
  standards, including repositories, documentation, and version control practices.],
  [*Director of Outreach.* The Director of Outreach shall develop and manage
  relationships with industry partners and with other Kennesaw State University
  organizations, shall coordinate guest reviewers and external clients, and shall manage
  external-facing communication in coordination with the Secretary.],
)
== Eligibility and Concurrent Roles <sec-officer-eligibility>
To be eligible to run for office, a candidate must have been an active member of the
organization for at least one (1) semester prior to the election and must be in good
standing with the University.
A member may hold more than one officer position, and may hold officer, committee, and project
roles at the same time. The offices of President and Treasurer shall not be held by the same
member. The Executive Board shall include at least four (4) distinct members.
== Terms <sec-officer-terms>
Officers shall serve a term of one (1) year, beginning at the formal transition of officers
following elections. Elections shall be held before the expiration of the current officers'
terms so that a transition period is preserved.
== Removal of Officers <sec-officer-removal>
An officer may be removed for failure to perform the duties of their office or for
conduct that materially harms the organization. Removal requires a petition signed by at
least one-third (1/3) of active members or a motion by the Executive Board, written notice
to the officer, an opportunity for the officer to respond, and a two-thirds (2/3) vote of
the active members present, quorum having been established.

// ==============================================================================
= Elections <art-elections> // Required
== Timeline <sec-election-timeline>
Election of officers shall be held annually in April. The Secretary shall announce the
election, the call for candidates, and the slate of candidates to the membership at least two
(2) weeks in advance. Results shall be announced at the conclusion of the election meeting,
and the formal transition of officers shall be completed within two (2) weeks of the election.
This process shall be democratic, as required by the RSO Manual.
== Vacancies <sec-vacancies>
Should an office become vacant mid-term, the Executive Board shall appoint an interim officer,
subject to ratification by a majority vote of active members present at the next regular
meeting. A vacancy in the office of President shall be filled by the Vice President for the
remainder of the term.
== Voting Procedures <sec-voting-procedures>
Elections shall be conducted by secret ballot. A candidate shall be elected by a simple
majority of active members voting. If no candidate for an office receives a majority, a runoff
shall be held between the two candidates receiving the most votes.

// ==============================================================================
= Meetings <art-meetings>
== Schedule and Notice <sec-meeting-schedule>
Regular meetings shall be held weekly during the fall and spring semesters. The President,
or a majority of the Executive Board, may call a special meeting. The Secretary shall publish
the regular meeting schedule at the start of each semester and shall notify members of any
special meeting, via e-mail, no later than five (5) business days in advance of the meeting.
== Quorum <sec-quorum>
Quorum shall consist of a majority (more than fifty percent) of active voting members and must
be present to conduct the business of the organization.
== Governing Rules <sec-governing-rules>
The most recent edition of _Robert's Rules of Order_ shall govern the meetings of this
organization within the requirements of this constitution and any bylaws adopted by the
membership.

// ==============================================================================
= Advisors <art-advisors> // Required
== Responsibilities <sec-advisor-responsibilities>
There shall be at least one (1) full-time Kennesaw State University faculty or staff member
who shall serve as an advisor to the organization. The advisor shall provide guidance and
institutional continuity, assist with required University paperwork, and attend meetings
and events when able. Consistent with the RSO Manual, the advisor serves as a guide and
may not make decisions on behalf of the organization.
== Selection and Term <sec-advisor-selection>
The advisor shall be selected by the Executive Board and confirmed annually by a majority
vote of active members. Should a change of advisor become necessary, a new advisor may be
appointed by the same process.

// ==============================================================================
= Committees <art-committees> // if applicable
== Standing Committees <sec-standing-committees>
The organization may establish standing committees to carry out its work, including but
not limited to a Projects Committee, an Outreach Committee, and an Events Committee.
Each committee shall operate under the direction of the relevant officer and shall report
to the Executive Board.
== Committee Membership <sec-committee-membership>
Committee members shall be appointed by the officer responsible for that committee,
with the approval of the Executive Board, or active members may volunteer to serve.
All active members are encouraged to serve on at least one committee.

// ==============================================================================
= Finances <art-finances> // if applicable
== Dues <sec-dues>
The organization shall not collect mandatory membership dues. Funding may instead be
sought through University allocations, sponsorships, and fundraising activities consistent
with University policy.
== Accounting <sec-accounting>
The Treasurer shall maintain accurate records of all funds received and expended and shall
report the organization's financial status to the membership upon request. All expenditures
shall be reviewed by the Executive Board, and financial records shall be available to the
advisor to ensure transparency and accountability.

// ==============================================================================
= Intellectual Property <art-ip> // if applicable
== Ownership <sec-ip-ownership>
Members retain full ownership of the intellectual property they create, including all
copyright, patent, and licensing rights. #orgshort claims no ownership of any work created by
its members. Where a work has multiple contributors, those contributors hold it jointly and
are responsible for settling ownership, licensing, and any proceeds among themselves.
== License to #orgshort <sec-ip-license>
As a condition of participating in a #orgshort project team, each contributor grants
#orgshort a non-exclusive, perpetual, irrevocable, royalty-free, worldwide license to host,
use, reproduce, modify, maintain, continue, display, and distribute their contributions to
that project, and to use the project and the contributor's name in demonstrations,
presentations, recruiting, and promotional material. This license is not a transfer of
ownership. It exists so that the organization can keep a project alive after its original
contributors graduate or move on.
== Custody of Repositories <sec-ip-custody>
Project repositories shall be hosted in an organization-controlled account. #orgshort shall
maintain administrative control of those repositories so that no single member may
unilaterally delete a project, make it private, or transfer it out of the organization.
Deletion, transfer, or restriction of a project repository requires the review of a panel as
defined in the bylaws.
== Right to Fork and Leave <sec-ip-fork>
Any contributor may fork, clone, republish, relicense their own contributions, or
commercialize a #orgshort project at any time, without the permission of #orgshort and
without any fee, buyout, royalty, or revenue share owed to #orgshort. #orgshort shall not
condition membership, advancement, or access to organization resources on the surrender of a
member's intellectual property.
== Client Work and University Policy <sec-ip-client>
Work performed for an external client or sponsor is governed by a written agreement reviewed by
the advisor before work begins, and the terms of that agreement supersede Sections
#num(<sec-ip-ownership>) through #num(<sec-ip-fork>) for that project. Nothing in this Article
shall be construed to override the intellectual property policies of Kennesaw State University
or the Board of Regents of the University System of Georgia, which take precedence where they
apply.

// ==============================================================================
= Constitutional Amendments <art-amendments> // Required
== Amendment Process <sec-amendment-process>
This constitution may be amended by a two-thirds (2/3) vote of the active members
present at any regular meeting of the organization, quorum having been established.
Proposed amendments must be submitted in writing and distributed to the membership at
least one (1) regular meeting in advance of the vote. Amendments take effect immediately
upon passage unless the amendment specifies otherwise.

// ==============================================================================
= Non-Discrimination Policy <art-non-discrimination> // Required -- verbatim
== Statement <sec-non-discrimination-statement>
Membership and all privileges, including voting and officer positions, must be extended
to all students without regard to race, color, sex, sexual orientation, gender identity,
gender expression, ethnicity or national origin, religion, age, genetic information,
disability, or veteran status. Membership and all privileges, including voting and
officer positions, must be extended to all students as stated in the Kennesaw State
University Non-Discrimination Statement. Title VI of the Civil Rights Act of 1964 protects
people from discrimination based on race, color or national origin in programs or activities
that receive Federal financial assistance. Title IX states that: No person in the United
States shall, on the basis of sex, be excluded from participation in, be denied the
benefits of, or be subjected to discrimination under any education program or activity
receiving Federal financial assistance.

// ==============================================================================
= Bylaws <art-bylaws> // if applicable
== Authority of the Bylaws <sec-bylaws-authority>
The organization may adopt bylaws to govern detailed or secondary policies not contained
in this constitution. Such bylaws shall carry the authority of the organization, provided
they do not conflict with this constitution.
== Adoption and Amendment <sec-bylaws-amendment>
Bylaws may be adopted or amended by a majority vote of the active members present at any
regular meeting, quorum having been established, provided the proposed change has been
distributed to the membership at least one (1) regular meeting in advance.

// ==============================================================================
= Dissolution <art-dissolution>
== Dissolution Procedure <sec-dissolution-procedure>
The organization may be dissolved by a two-thirds (2/3) vote of the active membership,
quorum having been established, at a meeting for which the proposed dissolution was
announced at least two (2) weeks in advance. Upon dissolution, the organization shall
settle any outstanding debts, and any remaining property, funds, accounts, and online
or social media assets shall be transferred to the Kennesaw State University Department
of Student Affairs or donated to a charitable or educational entity as determined by
the Executive Board in consultation with the advisor.
