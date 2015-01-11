import Silk.HTML 5.0
import Silk.XML 1.0
import QtQml 2.0

Tag {
    id: root
    property Head head
    property Tag body
    Component.onCompleted: {
        for (var i = 0; i < root.contents.length; i++) {
            var child = root.contents[i]
            if (child.tagName === 'head') {
                child.tagName = ''
                root.takeAt(i--)
                head.insert(head.contents.length, child)
            } else if (child.tagName === 'body') {
                child.tagName = ''
                root.takeAt(i--)
                body.insert(body.contents.length, child)
            }
        }
    }
}

