import 'package:cloud_firestore/cloud_firestore.dart';

class GetTermos {
  CollectionReference termos =
      FirebaseFirestore.instance.collection('id-videos');

  Future<List<String>> getTermos() async {
    DocumentSnapshot snapshot = await termos.doc('application').get();
    var data = snapshot.data() as Map<String, dynamic>;
    var termosLink = data['linkTermos'];
    return termosLink;
  }
}
