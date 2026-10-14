mixin Notifiable {
  
  void sendNotification(String recipient, String message) {
    print('[NOTIFICATION] To $recipient -> $message');
  }
}


class LibraryItem with Notifiable {
  String itemId;
  String title;
  bool _isAvailable; // Encapsulated property

  LibraryItem({
    required this.itemId,
    required this.title,
    bool isAvailable = true,
  }) : _isAvailable = isAvailable;

  // Getter for availability
  bool get isAvailable => _isAvailable;

  // Method to check out the item
  void checkOut() {
    if (_isAvailable) {
      _isAvailable = false;
      print('Item "$title" ($itemId) has been checked out.');
    } else {
      print('Item "$title" is currently NOT available.');
    }
  }

  // Method to return the item
  void returnItem() {
    _isAvailable = true;
    print('Item "$title" ($itemId) has been returned to the library.');
  }

  // Display details method
  void displayInfo() {
    print('ID: $itemId | Title: $title | Available: $_isAvailable');
  }
}

// ==========================================
// SUBCLASS: Book (Inherits from LibraryItem)
// Demonstrates "is-a" relationship (A Book is a LibraryItem)
// ==========================================
class Book extends LibraryItem {
  int pageCount;
  String author;

  // Constructor utilizing super initialization
  Book({
    required String itemId,
    required String title,
    required this.author,
    required this.pageCount,
    bool isAvailable = true,
  }) : super(itemId: itemId, title: title, isAvailable: isAvailable);

  // Overriding displayInfo to include book-specific details
  @override
  void displayInfo() {
    print('[Book Entity] ID: $itemId | Title: "$title" by $author | Pages: $pageCount | Available: $isAvailable');
  }

  // Book-specific behavior
  void readSamplePreview() {
    print('Opening preview of "$title" by $author. Enjoy reading the first chapter!');
  }
}

// ==========================================
// INDEPENDENT CLASS: Member (Uses Mixin)
// ==========================================
class Member with Notifiable {
  String memberId;
  String name;
  List<String> borrowedItemIds = [];

  // Constructor with named parameter
  Member({
    required this.memberId,
    required this.name,
  });

  void borrowItem(LibraryItem item) {
    if (item.isAvailable) {
      item.checkOut();
      borrowedItemIds.add(item.itemId);
      print('$name successfully borrowed "${item.title}".');
      
      // Using mixin method brought in via 'with Notifiable'
      sendNotification(name, 'Reminder: Return "${item.title}" within 14 days.');
    } else {
      print('Sorry $name, "${item.title}" is unavailable right now.');
    }
  }

  void displayMemberProfile() {
    print('Member: $name (ID: $memberId) | Active Borrowed Items Count: ${borrowedItemIds.length}');
  }
}

// ==========================================
// MAIN FUNCTION: Demonstrating Usage
// ==========================================
void main() {
  print('=== LIBRARY MANAGEMENT SYSTEM DEMO ===\n');

  // 1. Create instances of Book (Subclass of LibraryItem)
  Book flutterBook = Book(
    itemId: 'B001',
    title: 'Flutter Mobile Development Guide',
    author: 'A. Developer',
    pageCount: 350,
  );

  Book dartBook = Book(
    itemId: 'B002',
    title: 'Dart Programming Fundamentals',
    author: 'Kasinathan P',
    pageCount: 220,
  );

  // 2. Create an instance of Member
  Member studentMember = Member(
    memberId: 'M101',
    name: 'Kasinathan Pradeep',
  );

  // 3. Display initial entity states (Demonstrating overridden methods)
  print('--- Initial Catalog & Profile ---');
  flutterBook.displayInfo();
  dartBook.displayInfo();
  studentMember.displayMemberProfile();
  print('');

  // 4. Demonstrate polymorphism and inheritance methods
  print('--- Executing Operations ---');
  flutterBook.readSamplePreview(); // Subclass-specific method
  print('');

  // 5. Member borrows a book (Triggers item checkout + mixin notification)
  studentMember.borrowItem(flutterBook);
  print('');

  // 6. Check updated states
  print('--- Post-Borrow Status ---');
  flutterBook.displayInfo();
  studentMember.displayMemberProfile();

  print('\n=== DEMO COMPLETED SUCCESSFULLY ===');
}
