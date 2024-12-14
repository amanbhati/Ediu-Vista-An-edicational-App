import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notes_record.g.dart';

abstract class NotesRecord implements Built<NotesRecord, NotesRecordBuilder> {
  static Serializer<NotesRecord> get serializer => _$notesRecordSerializer;

  @BuiltValueField(wireName: 'Notes_data')
  String? get notesData;

  @BuiltValueField(wireName: 'Createdtime')
  DateTime? get createdtime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotesRecordBuilder builder) =>
      builder..notesData = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notes');

  static Stream<NotesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotesRecord._();
  factory NotesRecord([void Function(NotesRecordBuilder) updates]) =
      _$NotesRecord;

  static NotesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotesRecordData({
  String? notesData,
  DateTime? createdtime,
}) {
  final firestoreData = serializers.toFirestore(
    NotesRecord.serializer,
    NotesRecord(
      (n) => n
        ..notesData = notesData
        ..createdtime = createdtime,
    ),
  );

  return firestoreData;
}
