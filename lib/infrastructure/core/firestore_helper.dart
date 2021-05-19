import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ddd_project_temp/domain/auth/i_auth_facade.dart';
import 'package:firebase_ddd_project_temp/domain/core/errors.dart';
import 'package:firebase_ddd_project_temp/injection.dart';

extension FireStoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAutenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
