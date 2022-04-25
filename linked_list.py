class Node:
    """
    An object for storing a single node of a linked list.
    Models two attributes - data and the link to next node in the list
    """

    data = None
    next_node = None

    def __init__(self, data):
        self.data = data

    def __repr__(self):
        return "<Node data: %s>" % self.data


class LinkedList:
    """
    Singly linked list
    """

    def __init__(self):
        self.head = None

    def size(self):
        """
        Returns the of nodes in the list
        Takes 0(n) time
        """
        current = self.head
        count = 0

        while current:
            count += 1
            current = current.next_node

            return count

    def add(self, data):
        """
        Adds new node containing data at the head of the list.
        Takes 0(1) time
        """

        new_node = Node(data)
        new_node.next_node = self.head
        self.head = new_node

    def search(self, key):
        """Search for the firdt node containing data that matches the key. 
        Returns the node or Nne if not found. 
        Takes 0(n) time
        """
        current = self.head
        while current:
            if current.data == key:
                return current
            else:
                current = current.next_node
        return None

    def insert(self, data, index):
        """
        Inserts a new node containing data at the given index
        insertion takes 0(1) time but finding the next node at the insertion point takes 0(n) time
        Takes overall 0(n) time
        """
        if index == 0:
            self.add(data)

        if index > 0:
            new = Node(data)
            position = index
            current = self.head

            while position > 1:
                current = current.next_node
                position -= 1

            prev_node = current
            next_node = current.next_node

            prev_node.next_node = new
            new.next_node = next_node

    def remove(self, key):
        """
        Removes node containing data that matches the key.
        Returns the node or None if key does not exist.
        Takes 0(n) time
        """
        current = self.head
        previous = None
        found = False

        while current and not found:
            if current.data == current is self.head:
                found = True
                self.head = current.next_node
            elif current.data == key:
                found = True
                previous.next_node = current.next_node
            else:
                previous = current
                current = current.next_node
                
        return current

    def __repr__(self):
        """
        Return a string representation of the list.
        Takes0(n) time.
        """
        nodes = []
        current = self.head

        while current:
            if current is self.head:
                nodes.append("[Head: %s]" % current.data)
            elif current.next_node is None:
                nodes.append("[Tail: %s]" % current.data)
            else:
                nodes.append("[%s]" % current.data)

            current = current.next_node
        return '->'.join(nodes)


l = LinkedList()

l.add(1)
l.add(21)
l.add(34)
l.add(45)

n = l.search(34)

print(l)
print(n)
