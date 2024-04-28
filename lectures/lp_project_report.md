---
date: 2023-10-26
---

<!--pan_title: How to write a project report-->

# Why
> Them who has a Why? in life can tolerate almost any How?

You're writing the report on the project for me to be able to see inside
your head, and grade how much of the project you have understood. 

- Have you learned what is to be expected?
- Do you understand what you're trying to explain? 

You will work on the project in groups, however, on the report, you will write
on your own.

That means, that there will be X projects reports that describe the same
circuit. You shall not copy someone elses report text. 

It's fine to share figures between reports, and also references. 

I'm also forcing you to use a report format that matches well with what would be
expected if you were to publish a paper. 

Should you make a fantastic temperature sensor, and maybe even reach close to a
tapeout I would strongly suggest you submit a paper to 
[NorCas](https://events.tuni.fi/uploads/2023/12/8af07ce6-norcas2024_cfp.pdf).
The deadline is August 15 2024.

# On writing English

Writing well is important. I would recommend that you read [On writing
Well](https://www.amazon.com/Writing-Well-Classic-Guide-Nonfiction/dp/0060891548).

Most of you won't buy the book, as such, a few tips.

## Shorter is better 

I can write the section title idea in many words: 

> A shorter text will more elequently describe the intricacies of your thoughts
> than a long, distinguished, tirade of carefully, wonderfully, choosen words. 

or 

> Shorter is better 

Describe an idea with as few words as possible. The text will be better, and
more readable. 

## Be careful with adjectives 

Words like "very, extremely, easily, simply, ..." don't belong in a readable
text. They serve no purpose. Delete them.

## Use paragraphs

You write a text to place ideas into anothers head. Ideas and thoughts are best
communicated in chunks. I can write a dense set of text, or I can split a dense
set of text into multiple paragraphs. The more I try to cram into a paragraph,
for example, how magical the weather has been the last weeks, with lots of snow,
and good skiing, the more difficult the paragraph is to read. 

One paragraph, one thought. For example:

You write a text to place ideas into anothers head. Ideas and thoughts are best
communicated in chunks. 

I can write a dense set of text, or I can split a dense
set of text into multiple paragraphs. 

The more I try to cram into a paragraph,
for example, how magical the weather has been the last weeks, with lots of snow,
and good skiing, the more difficult the paragraph is to read. 

## Don't be afraid of I 

If you did something, then say "I" in the text. If there were more people, then
use "we". 

## Transitions are important

Sentences within a paragraph are sometimes linked. Use 

- As a result,
- As such, 
- Accordingly,
- Consequently,

And mix them up. 

## However, is not a start of a sentence 

If you have to use "However" it should come in the middle of the sentence. 

I want to go skiing, however, I cannot today due to work. 

# Report Structure

The sections below go through the expected structure of a report, and what the 
sections should contain.

## Introduction

The purpose of the introduction is to put the reader into the right
frame of mind. Introduce the problem statement, key references, the key
contribution of your work, and an outline of the work presented. Think
of the introduction as explaining the "Why" of the work.

Although everyone has the same assignment for the project, you have
chosen to solve the problem in different ways. Explain what you consider
the problem statement, and tailor the problem statement to what the
reader will read.

Key references are introduced. Don't copy the paper
text, write why they designed the circuit, how they chose to implement
it, and what they achieved. The reason we reference other papers in the
introduction is to show that we understand the current state-of-the-art.
Provide a summary where state-of-the-art has moved since the original paper.

The outline should be included towards the end of the introduction. The
purpose of the outline is to make this document easy to read. A reader
should never be surprised by the text. All concepts should be eased
into. We don't want the reader to feel like they been thrown in at the
end of a long story. As such, if you chosen to solve the problem
statement in a way not previously solved in a key references, then you
should explain that.

A checklist for all chapters can be seen in table below.

## Theory

It is safe to assume that all readers have read the key references,
if they have not, then expect them to do so. 

The purpose of the theory section is not to demonstrate that you have read the references,
but rather, highlight theory that the reader probably does not know. 

The theory section should give sufficient explanation to bridge the gap
between references, and what you apply in this text.

## Implementation

The purpose of the implementation is to explain what you did. How have
you chosen to architect the solution, how did you split it up in analog
and digital parts? Use one subsection per circuit.

For the analog, explain the design decisions you made, how did you pick
the transistor sizes, and the currents. Did you make other choices than in the
references? How does the circuit work?  

For the digital, how did you divide up the digital? What were the design
choices you made?  How did you implement readout of the data? Explain
what you did, and how it works. Use state diagrams and block diagrams.

Use clear figures (i.e.
circuitikz), don't use pictures from schematic editors. 

## Result

The purpose of the results is to convince the reader that what you made
actually works. To do that, explain testbenches and simulation results.
The key to good results is to be critical of your own work. Do not try
to oversell the results. Your result should speak for themself.

For analog circuits, show results from each block. Highlight key
parameters, like current and delay of comparator. Demonstrate that the
full analog system works.

Show simulations that demonstrate that the digital works.

## Discussion

Explain what the circuit and results show. Be critical.

## Future work

Give some insight into what is missing in the work. What should be the
next steps?

## Conclusion

Summarize why, how, what and what the results show.

## Appendix

Include in appendix the necessary files to reproduce the work. One good
way to do it is to make a github repository with the files, and give a
link here.


# Checklist


| **Item**                                                               | **Description**                                                                                                                                                                                                                                                                           | **OK** |
|:-----------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------|
| Is the problem description clearly defined?                            | Describe which parts of the problem you chose to focus on. The problem description should match the results you've achieved.                                                                                                                                                              |        |
| Is there a clear explanation why the problem is worth solving?         | The reader might need help to understand why the problem is interesting                                                                                                                                                                                                                   |        |
| Is status of state-of-the-art clearly explained?                       | You should make sure that you know what others have done for the same problem. Check IEEEXplore. Provide summary and references. Explain how your problem or solution is different                                                                                                        |        |
| Is the key contribution clearly explained?                             | Highlight what you've achieved. What was your contribution?                                                                                                                                                                                                                               |        |
| Is there an outline of the report?                                     | Give a short summary of what the reader is about to read                                                                                                                                                                                                                                  |        |
| Is it possible for a reader skilled in the art to understand the work? | Have you included references to relevant papers                                                                                                                                                                                                                                           |        |
| Is the theory section too long                                         | The theory section should be less than 10 % of the work                                                                                                                                                                                                                                   |        |
| Are all circuits explained?                                            | Have you explained how every single block works?                                                                                                                                                                                                                                          |        |
| Are figures clear?                                                     | Remember to explain all colors, and all symbols. Explain what the reader should understand from the figure. All figures must be referenced in the text.                                                                                                                                   |        |
| Is it clear how you verified the circuit?                              | It's a good idea to explain what type of testbenches you used. For example, did you use dc, ac or transient to verify your circuit?                                                                                                                                                       |        |
| Are key parameters simulated?                                          | You at least need current from VDD. Think through what you would need to simulate to prove that the circuit works.                                                                                                                                                                        |        |
| Have you tried to make the circuit fail?                               | Knowing how circuits fail will increase confidence that it will work under normal conditions.                                                                                                                                                                                             |        |
| Have you been critical of your own results?                            | Try to look at the verification from different perspectives. Play devil's advocate, try to think through what could go wrong, then explain how your verification proves that the circuit does work.                                                                                       |        |
| Have you explained the next steps?                                     | Imagine that someone reads your work. Maybe they want to reproduce it, and take one step further. What should that step be?                                                                                                                                                               |        |
| No new information in conclusion.                                      | Never put new information into conclusion. It's a summary of what's been done                                                                                                                                                                                                             |        |
| Story                                                                  | Does the work tell a story, is it readable? Don't surprise the reader by introducing new topics without background information.                                                                                                                                                           |        |
| Chronology                                                             | Don't let the report follow the timeline of the work done. What I mean by that is don't write "first I did this, then I spent huge amount of time on this, then I did that". No one cares what the timeline was. The report does not need to follow the same timeline as the actual work. |        |
| Too much time                                                          | How much time you spent on something should not be correlated to how much text there is in the report. No one cares how much time you spent on something. The report is about why, how, what and does it work.                                                                            |        |
| Length                                                                 | A report should be concise. Only include what is necessary, but no more. Shorter is almost always better than longer.                                                                                                                                                                     |        |
| Template                                                               | Use [IEEEtran.cls](https://www.ieee.org/conferences/publishing/templates.html). Example can be seen from an old version of this document at  <https://github.com/wulffern/dic2021/tree/main/2021-10-19_project_report>.  Write in LaTeX. You will need LaTeX for your project and master thesis. Use <http://overleaf.com> if you're uncomfortable with local text editors and LaTeX.                       |        |
| Spellcheck                                                             | Always use a spellchecker. Misspelled words are annoying, and may change content and context (peaked versus piqued)                                                                                                                                                                       |        |

