See https://github.com/schwa/swiftgraphics/issues for more, major issues.

TODO list is mainly a list of thoughts/wishes. Github issues is for more concrete items.
TODO: REMOVE - replace with github issues (or vice versa)

* Too many different ways to render to a bitmap context - reduce to one or two methods
* Make more use of Swift 2 protocol extensions.
* Refactor QuadTree so it can be serialised to disk. This means making it far more generic (looking up nodes using some mechanism other than direct reference). Ideal if segments of the tree can be loaded at once?
* Sanitize Drawable
    * Really need to start again with this concept (in light of protocol extensions)
    * See Image.playground for some ideas
    * Some Drawables have origins (rect, circle, etc)
    * Some Drawables might not (CGImage, if it becomes drawable)
    * Drawable protocol really need to inherit from a Sizeable protocol. Also "Originable".
    * Origin can be "augmented" via transform stack at render time
    * The size of the object can be affected by style - e.g. line width, etc
    * Imageable and Drawable are really the same thing
    * Pathable?
    * Styled (template) object: struct Styled <T> { }
