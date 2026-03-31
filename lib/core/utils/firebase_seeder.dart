import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:talker/talker.dart';

/// Seeds Firebase with test data for development.
/// Call from Settings page or main.dart in debug mode.
class FirebaseSeeder {
  FirebaseSeeder({
    required FirebaseFirestore firestore,
    required FirebaseAuth auth,
    required Talker talker,
  })  : _firestore = firestore,
        _auth = auth,
        _talker = talker;

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final Talker _talker;

  Future<void> seedAll() async {
    _talker.info('[SEEDER] Starting Firebase seed...');
    await _seedUsers();
    await _seedProductionLines();
    await _seedInventory();
    await _seedBusinesses();
    _talker.info('[SEEDER] Firebase seed complete!');
  }

  Future<void> _seedUsers() async {
    final users = [
      {
        'email': 'admin@zyncgum.com',
        'name': 'Azimjon Karimov',
        'role': 'admin',
        'avatarUrl': '',
        'phone': '+998901234567',
        'position': 'Director',
        'department': 'Management',
        'last_login': FieldValue.serverTimestamp(),
        'created_at': Timestamp.fromDate(DateTime(2025, 1, 15)),
      },
      {
        'email': 'manager@zyncgum.com',
        'name': 'Dilshod Umarov',
        'role': 'manager',
        'avatarUrl': '',
        'phone': '+998937654321',
        'position': 'Production Manager',
        'department': 'Production',
        'last_login': FieldValue.serverTimestamp(),
        'created_at': Timestamp.fromDate(DateTime(2025, 3, 1)),
      },
      {
        'email': 'operator@zyncgum.com',
        'name': 'Sardor Toshmatov',
        'role': 'user',
        'avatarUrl': '',
        'phone': '+998951112233',
        'position': 'Line Operator',
        'department': 'Production',
        'last_login': FieldValue.serverTimestamp(),
        'created_at': Timestamp.fromDate(DateTime(2025, 6, 10)),
      },
      {
        'email': 'accountant@zyncgum.com',
        'name': 'Nodira Rahimova',
        'role': 'manager',
        'avatarUrl': '',
        'phone': '+998944445566',
        'position': 'Chief Accountant',
        'department': 'Finance',
        'last_login': FieldValue.serverTimestamp(),
        'created_at': Timestamp.fromDate(DateTime(2025, 2, 20)),
      },
    ];

    // Seed current auth user if exists
    final currentUser = _auth.currentUser;
    if (currentUser != null) {
      final doc = _firestore.collection('users').doc(currentUser.uid);
      final snap = await doc.get();
      if (!snap.exists) {
        await doc.set(users.first..['email'] = currentUser.email ?? '');
        _talker.info('[SEEDER] Current user seeded: ${currentUser.uid}');
      }
    }

    // Seed sample users with fixed IDs
    final ids = ['user_001', 'user_002', 'user_003', 'user_004'];
    for (var i = 0; i < users.length; i++) {
      await _firestore.collection('users').doc(ids[i]).set(users[i]);
    }
    _talker.info('[SEEDER] ${users.length} users seeded');
  }

  Future<void> _seedProductionLines() async {
    final lines = [
      {
        'flavor': 'Mint Fresh',
        'status': 'running',
        'progressPercent': 72.5,
        'temperature': 36.8,
        'dailyTarget': 1000,
        'produced': 725,
      },
      {
        'flavor': 'Strawberry Blast',
        'status': 'running',
        'progressPercent': 45.0,
        'temperature': 35.2,
        'dailyTarget': 800,
        'produced': 360,
      },
      {
        'flavor': 'Watermelon',
        'status': 'idle',
        'progressPercent': 0.0,
        'temperature': 22.0,
        'dailyTarget': 600,
        'produced': 0,
      },
      {
        'flavor': 'Classic Bubble',
        'status': 'running',
        'progressPercent': 91.0,
        'temperature': 37.1,
        'dailyTarget': 1200,
        'produced': 1092,
      },
      {
        'flavor': 'Grape Mix',
        'status': 'stopped',
        'progressPercent': 33.0,
        'temperature': 24.5,
        'dailyTarget': 500,
        'produced': 165,
      },
    ];

    final ids = ['line_001', 'line_002', 'line_003', 'line_004', 'line_005'];
    for (var i = 0; i < lines.length; i++) {
      await _firestore.collection('production_lines').doc(ids[i]).set(lines[i]);
    }
    _talker.info('[SEEDER] ${lines.length} production lines seeded');
  }

  Future<void> _seedInventory() async {
    final items = [
      {'materialName': 'Sugar', 'quantity': 2500.0, 'unit': 'kg', 'minLevel': 500.0},
      {'materialName': 'Gum Base', 'quantity': 180.0, 'unit': 'kg', 'minLevel': 200.0},
      {'materialName': 'Corn Syrup', 'quantity': 800.0, 'unit': 'L', 'minLevel': 300.0},
      {'materialName': 'Mint Flavoring', 'quantity': 45.0, 'unit': 'L', 'minLevel': 50.0},
      {'materialName': 'Strawberry Flavoring', 'quantity': 120.0, 'unit': 'L', 'minLevel': 30.0},
      {'materialName': 'Food Coloring (Red)', 'quantity': 15.0, 'unit': 'kg', 'minLevel': 10.0},
      {'materialName': 'Packaging Film', 'quantity': 50.0, 'unit': 'roll', 'minLevel': 100.0},
      {'materialName': 'Glycerin', 'quantity': 350.0, 'unit': 'L', 'minLevel': 100.0},
    ];

    final ids = ['inv_001', 'inv_002', 'inv_003', 'inv_004', 'inv_005', 'inv_006', 'inv_007', 'inv_008'];
    for (var i = 0; i < items.length; i++) {
      await _firestore.collection('inventory').doc(ids[i]).set(items[i]);
    }
    _talker.info('[SEEDER] ${items.length} inventory items seeded');
  }

  Future<void> _seedBusinesses() async {
    final userId = _auth.currentUser?.uid ?? 'user_001';
    final businesses = [
      {
        'name': 'Zync Gum Factory',
        'type': 'manufacturing',
        'monthlyRevenue': 85000.0,
        'employeesCount': 45,
        'isActive': true,
        'address': "Toshkent, Chilonzor tumani, Bunyodkor ko'chasi 12",
        'userId': userId,
        'createdAt': Timestamp.fromDate(DateTime(2024, 6, 1)),
      },
      {
        'name': 'Zync Retail Store',
        'type': 'retail',
        'monthlyRevenue': 25000.0,
        'employeesCount': 8,
        'isActive': true,
        'address': "Toshkent, Mirzo Ulug'bek tumani",
        'userId': userId,
        'createdAt': Timestamp.fromDate(DateTime(2025, 1, 15)),
      },
      {
        'name': 'Samarqand Distribution',
        'type': 'service',
        'monthlyRevenue': 15000.0,
        'employeesCount': 5,
        'isActive': false,
        'address': "Samarqand, Registon ko'chasi 45",
        'userId': userId,
        'createdAt': Timestamp.fromDate(DateTime(2025, 8, 10)),
      },
    ];

    final ids = ['biz_001', 'biz_002', 'biz_003'];
    for (var i = 0; i < businesses.length; i++) {
      await _firestore.collection('businesses').doc(ids[i]).set(businesses[i]);
    }
    _talker.info('[SEEDER] ${businesses.length} businesses seeded');
  }
}
