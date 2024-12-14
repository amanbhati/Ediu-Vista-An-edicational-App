// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotesRecord> _$notesRecordSerializer = new _$NotesRecordSerializer();

class _$NotesRecordSerializer implements StructuredSerializer<NotesRecord> {
  @override
  final Iterable<Type> types = const [NotesRecord, _$NotesRecord];
  @override
  final String wireName = 'NotesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NotesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.notesData;
    if (value != null) {
      result
        ..add('Notes_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdtime;
    if (value != null) {
      result
        ..add('Createdtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  NotesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Notes_data':
          result.notesData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Createdtime':
          result.createdtime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$NotesRecord extends NotesRecord {
  @override
  final String? notesData;
  @override
  final DateTime? createdtime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotesRecord([void Function(NotesRecordBuilder)? updates]) =>
      (new NotesRecordBuilder()..update(updates))._build();

  _$NotesRecord._({this.notesData, this.createdtime, this.ffRef}) : super._();

  @override
  NotesRecord rebuild(void Function(NotesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotesRecordBuilder toBuilder() => new NotesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotesRecord &&
        notesData == other.notesData &&
        createdtime == other.createdtime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notesData.hashCode);
    _$hash = $jc(_$hash, createdtime.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotesRecord')
          ..add('notesData', notesData)
          ..add('createdtime', createdtime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotesRecordBuilder implements Builder<NotesRecord, NotesRecordBuilder> {
  _$NotesRecord? _$v;

  String? _notesData;
  String? get notesData => _$this._notesData;
  set notesData(String? notesData) => _$this._notesData = notesData;

  DateTime? _createdtime;
  DateTime? get createdtime => _$this._createdtime;
  set createdtime(DateTime? createdtime) => _$this._createdtime = createdtime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotesRecordBuilder() {
    NotesRecord._initializeBuilder(this);
  }

  NotesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notesData = $v.notesData;
      _createdtime = $v.createdtime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotesRecord;
  }

  @override
  void update(void Function(NotesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotesRecord build() => _build();

  _$NotesRecord _build() {
    final _$result = _$v ??
        new _$NotesRecord._(
            notesData: notesData, createdtime: createdtime, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
