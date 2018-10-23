# Code Reviews

Code reviews are about getting the changes that you have made to the code reviewed by another programmer. They are an iterative process that involves suggesting edits, reviewing the edits, making changes.

![Never Assume Code Is Good](http://i.stack.imgur.com/dLTF8.png)

## Code Review Culture

-   Feedback skills. Developers are open-minded, curious, and willing to learn from their peers.
-   Code is personal, there is always person behind it.
-   The review process should not hold up development. You can work on another branch while waiting for the review. This implies that developers are comfortable with working on multiple branches in parallel.

![](https://davidwalsh.name/demo/code-review-2.jpg)

## Preparing code for Reviews

1.  The fewer the changes, the quicker the reviewer can get to it. Contrastingly, too many small Pull Requests may cause too much context switching. Always err on the side of fewer changes.
2.  Check the name of the branch
3.  Make sure to push the changes

## Performing a Review

1.  Use `git fetch` or get new branches. Obtain a local copy of the code
2.  Diff the local branch with the remote branch
3.  Install all the relevant dependencies
4.  Run the tests and see if they pass
5.  Test the code manually
6.  On a separate screen, open the code on GitHub.

## Post Reviews

1.  Delete the branch when finished

!!! TODO

    What are some things to look for in a code review?

    What is the size and impact of the change?
