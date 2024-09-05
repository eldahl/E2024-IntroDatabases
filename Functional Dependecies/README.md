# Functional Dependencies

First consider this relation for a published book:

```
Book(title, author_name, book_type, list_price, author_affil, publisher)
```
`author_affil` refers to the affiliation of the author. Suppose the following dependencies hold:    

title→book_type,publisher   
book_type→list_price    
author_name→author_affil

# Normal form of the relation

***What normal form is the relation in? Explain how you came to your answer.***  
The relation is in first normal form.    
This is because there are several non-prime attributes which are not fully dependent 
on the primary key, and so the relation is not in second normal form.    
Additionally, it can be assured that the relation satisfies first normal form,
given that all non-prime attributes are atomic values.

# Apply normalization

***Apply normalization to the relation, until you cannot normalize any further.
Explain the reason for each step in the normalization.***   
### Second Normal Form:
We remove partial dependencies that are depended on composite keys. To do so, we use the defined
dependencies, as a truth of partial dependencies.
The initial relations is split into the follow:
```
Book(title, author_name, book_type, publisher)
BookType(book_type, list_price)
Author(author_name, author_affil)
```

### Third Normal Form:
Since there are no transitive dependencies, 3NF is also satisfied by the above relations.   

### Boyce-Codd Normal Form:
To achieve BCNF, each functional dependency in the relations must be a super key.
This means that the key must uniquely identify its row. We make sure this is the case by adding 
an ID to the Book relation, and an ID to the Author relation, thus making sure that 
duplicate book titles, or author names do not cause issues.
```
Book(book_id, title, author_name, book_type, publisher)
BookType(book_type, list_price)
Author(author_id, author_name, author_affil)
```
Thus, we achieve BCNF. There are normal forms beyond these, but this is beyond this assignment.
