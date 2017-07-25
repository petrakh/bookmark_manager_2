# Bookmark Manager

User Stories
---

```
As a Makers student
So that I can keep track of all the links I get from Dan
I want a bookmark manager that shows a list of links

As a Makers student
So that I can keep track of new webpages
I want to add them to the bookmark manager's list of links

As a Makers student
So that I know what topic a link refers to
I want to be able to add a tag to a link

As a Makers student
So that I can see links related to a topic
I want to filter the links based on tags
```

Domain Model
---

* Bookmark manager <-- add_link (link, [tag]) --> added_link
* Bookmark manager <-- add_tag_to_link (link, tag) --> tagged_link
* Bookmark manager <-- filter_links (tag) --> list of links * with the tag
* Bookmark manager <-- view_links --> list of all links
