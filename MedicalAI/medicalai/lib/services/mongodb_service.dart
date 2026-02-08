import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:medicalai/constants.dart';

class MongoDatabase {
  static var db, userCollection;

  static Future<void> connect() async {
    try {
      db = await Db.create(AppConstants.mongoDbUri);
      await db.open();
      inspect(db);
      userCollection = db.collection(AppConstants.usersCollection);
      log('Connected to MongoDB');
    } catch (e) {
      log('Error connecting to MongoDB:', error: e);
    }
  }

  static Future<Map<String, dynamic>?> login(String email, String password) async {
    try {
      if (userCollection == null) {
        log('Database not connected');
        return null;
      }
      final user = await userCollection.findOne(where.eq('email', email).eq('password', password));
      return user;
    } catch (e) {
      log('Error logging in:', error: e);
      return null;
    }
  }

  static Future<String> register(String username, String email, String password) async {
    try {
      if (userCollection == null) {
        return 'Database not connected';
      }
      final exists = await userCollection.findOne(where.eq('email', email));
      if (exists != null) {
        return 'Email already exists';
      }
      
      var result = await userCollection.insertOne({
        'username': username,
        'email': email,
        'password': password,
        'created_at': DateTime.now().toIso8601String(),
      });
      
      if (result.isSuccess) {
        return 'Success';
      } else {
        return 'Registration failed';
      }
    } catch (e) {
      log('Error registering:', error: e);
      return 'Error: ${e.toString()}';
    }
  }
}
