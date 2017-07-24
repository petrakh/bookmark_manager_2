# Bookmark Manager

User Stories
---

```
As a Makers student
So that I can keep track of so many links I get from Dan
I want a bookmark manager that shows a list of links

As a Makers student
So that I can keep track of new links I get
I want to add it to the bookmark manager's list of links

As a Makers student
So that I know what topic a link refers to
I want to add a tag to links in bookmark manager

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
