# \# Number Theory: Subtraction

# 

# In this lab you've learned the basics of number theory as it relates to subtraction.

# 

# \## Rubric

# 

# | Item | Description | Value |

# | ---- | ----------- | ----- |

# | Summary Answers | Your writings about what you learned in this lab. | 25% |

# | Question 1 | Your answers to the question | 25% |

# | Question 2 | Your answers to the question | 25% |

# | Question 3 | Your answers to the question | 25% |

# 

# \## Names Kade Burback Kenny Shannon

# 

# \## Summary

# 

# We learned how to implement a half adder, a one's compliment adder using full adders, and a two's compliment converter.

# \## Lab Questions

# 

# \### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

# 

# Half adder outputs a Y and a Carry = A\&B while the half subtractor outputs a Y a Borrow = \~A\&B

# 

# \### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

# 

# There is a second set of addition and carry bits to accounts for.

# 

# \### 3 - What is the edge case and problem with Two’s Complement number representation?

# 

# The edge case is the least significant bit carry-in has to be outside the for loop because it must be set to 0 and can't be evaluated by carry\[ i - 1 ]

