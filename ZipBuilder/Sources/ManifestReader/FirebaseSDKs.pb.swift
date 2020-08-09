/*
 * Copyright 2019 The Firebase Apple SDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: FirebaseSDKs.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct ZipBuilder_FirebaseSDKs {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var sdk: [ZipBuilder_SDK] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct ZipBuilder_SDK {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// SDK name.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// MPM name for the blueprint.
  public var mpmName: String {
    get {return _storage._mpmName}
    set {_uniqueStorage()._mpmName = newValue}
  }

  /// Public version.
  public var publicVersion: String {
    get {return _storage._publicVersion}
    set {_uniqueStorage()._publicVersion = newValue}
  }

  /// List of MPM patterns to build.
  public var mpmPattern: [String] {
    get {return _storage._mpmPattern}
    set {_uniqueStorage()._mpmPattern = newValue}
  }

  /// An optional list of additional blaze flags.
  public var blazeFlags: ZipBuilder_BlazeFlag {
    get {return _storage._blazeFlags ?? ZipBuilder_BlazeFlag()}
    set {_uniqueStorage()._blazeFlags = newValue}
  }
  /// Returns true if `blazeFlags` has been explicitly set.
  public var hasBlazeFlags: Bool {return _storage._blazeFlags != nil}
  /// Clears the value of `blazeFlags`. Subsequent reads from it will return its default value.
  public mutating func clearBlazeFlags() {_uniqueStorage()._blazeFlags = nil}

  /// List of MPM patterns to build (optional nightly override).
  public var nightlyMpmPattern: [String] {
    get {return _storage._nightlyMpmPattern}
    set {_uniqueStorage()._nightlyMpmPattern = newValue}
  }

  /// Whether or not the SDK is built from open-source.
  public var openSource: Bool {
    get {return _storage._openSource}
    set {_uniqueStorage()._openSource = newValue}
  }

  /// Whether or not to strip the i386 architecture from the build.
  public var stripI386: Bool {
    get {return _storage._stripI386}
    set {_uniqueStorage()._stripI386 = newValue}
  }

  /// List of build targets to build the SDK - used for collecting licenses.
  public var buildTarget: [String] {
    get {return _storage._buildTarget}
    set {_uniqueStorage()._buildTarget = newValue}
  }

  /// Whether or not to strip both the i386 and armv7 architectures from the
  /// build.
  public var strip32Bits: Bool {
    get {return _storage._strip32Bits}
    set {_uniqueStorage()._strip32Bits = newValue}
  }

  /// Specifies if the provided pod should be fetched from public repo.
  /// Mainly use for clash testing.
  public var publicPod: Bool {
    get {return _storage._publicPod}
    set {_uniqueStorage()._publicPod = newValue}
  }

  /// Whether or not to use the builtin flags.
  public var noBuiltinFlags: Bool {
    get {return _storage._noBuiltinFlags}
    set {_uniqueStorage()._noBuiltinFlags = newValue}
  }

  /// Whether or not to build arm64e slice.
  public var buildArm64E: Bool {
    get {return _storage._buildArm64E}
    set {_uniqueStorage()._buildArm64E = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct ZipBuilder_BlazeFlag {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// An additional blaze flag needed to build the SDK.
  public var flag: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ZipBuilder"

extension ZipBuilder_FirebaseSDKs: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FirebaseSDKs"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sdk"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.sdk)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sdk.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.sdk, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: ZipBuilder_FirebaseSDKs, rhs: ZipBuilder_FirebaseSDKs) -> Bool {
    if lhs.sdk != rhs.sdk {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ZipBuilder_SDK: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SDK"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "mpm_name"),
    3: .standard(proto: "public_version"),
    4: .standard(proto: "mpm_pattern"),
    5: .standard(proto: "blaze_flags"),
    6: .standard(proto: "nightly_mpm_pattern"),
    7: .standard(proto: "open_source"),
    8: .standard(proto: "strip_i386"),
    9: .standard(proto: "build_target"),
    10: .standard(proto: "strip_32bits"),
    11: .standard(proto: "public_pod"),
    12: .standard(proto: "no_builtin_flags"),
    13: .standard(proto: "build_arm64e"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _mpmName: String = String()
    var _publicVersion: String = String()
    var _mpmPattern: [String] = []
    var _blazeFlags: ZipBuilder_BlazeFlag? = nil
    var _nightlyMpmPattern: [String] = []
    var _openSource: Bool = false
    var _stripI386: Bool = false
    var _buildTarget: [String] = []
    var _strip32Bits: Bool = false
    var _publicPod: Bool = false
    var _noBuiltinFlags: Bool = false
    var _buildArm64E: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _mpmName = source._mpmName
      _publicVersion = source._publicVersion
      _mpmPattern = source._mpmPattern
      _blazeFlags = source._blazeFlags
      _nightlyMpmPattern = source._nightlyMpmPattern
      _openSource = source._openSource
      _stripI386 = source._stripI386
      _buildTarget = source._buildTarget
      _strip32Bits = source._strip32Bits
      _publicPod = source._publicPod
      _noBuiltinFlags = source._noBuiltinFlags
      _buildArm64E = source._buildArm64E
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._name)
        case 2: try decoder.decodeSingularStringField(value: &_storage._mpmName)
        case 3: try decoder.decodeSingularStringField(value: &_storage._publicVersion)
        case 4: try decoder.decodeRepeatedStringField(value: &_storage._mpmPattern)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._blazeFlags)
        case 6: try decoder.decodeRepeatedStringField(value: &_storage._nightlyMpmPattern)
        case 7: try decoder.decodeSingularBoolField(value: &_storage._openSource)
        case 8: try decoder.decodeSingularBoolField(value: &_storage._stripI386)
        case 9: try decoder.decodeRepeatedStringField(value: &_storage._buildTarget)
        case 10: try decoder.decodeSingularBoolField(value: &_storage._strip32Bits)
        case 11: try decoder.decodeSingularBoolField(value: &_storage._publicPod)
        case 12: try decoder.decodeSingularBoolField(value: &_storage._noBuiltinFlags)
        case 13: try decoder.decodeSingularBoolField(value: &_storage._buildArm64E)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if !_storage._mpmName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._mpmName, fieldNumber: 2)
      }
      if !_storage._publicVersion.isEmpty {
        try visitor.visitSingularStringField(value: _storage._publicVersion, fieldNumber: 3)
      }
      if !_storage._mpmPattern.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._mpmPattern, fieldNumber: 4)
      }
      if let v = _storage._blazeFlags {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if !_storage._nightlyMpmPattern.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._nightlyMpmPattern, fieldNumber: 6)
      }
      if _storage._openSource != false {
        try visitor.visitSingularBoolField(value: _storage._openSource, fieldNumber: 7)
      }
      if _storage._stripI386 != false {
        try visitor.visitSingularBoolField(value: _storage._stripI386, fieldNumber: 8)
      }
      if !_storage._buildTarget.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._buildTarget, fieldNumber: 9)
      }
      if _storage._strip32Bits != false {
        try visitor.visitSingularBoolField(value: _storage._strip32Bits, fieldNumber: 10)
      }
      if _storage._publicPod != false {
        try visitor.visitSingularBoolField(value: _storage._publicPod, fieldNumber: 11)
      }
      if _storage._noBuiltinFlags != false {
        try visitor.visitSingularBoolField(value: _storage._noBuiltinFlags, fieldNumber: 12)
      }
      if _storage._buildArm64E != false {
        try visitor.visitSingularBoolField(value: _storage._buildArm64E, fieldNumber: 13)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: ZipBuilder_SDK, rhs: ZipBuilder_SDK) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._mpmName != rhs_storage._mpmName {return false}
        if _storage._publicVersion != rhs_storage._publicVersion {return false}
        if _storage._mpmPattern != rhs_storage._mpmPattern {return false}
        if _storage._blazeFlags != rhs_storage._blazeFlags {return false}
        if _storage._nightlyMpmPattern != rhs_storage._nightlyMpmPattern {return false}
        if _storage._openSource != rhs_storage._openSource {return false}
        if _storage._stripI386 != rhs_storage._stripI386 {return false}
        if _storage._buildTarget != rhs_storage._buildTarget {return false}
        if _storage._strip32Bits != rhs_storage._strip32Bits {return false}
        if _storage._publicPod != rhs_storage._publicPod {return false}
        if _storage._noBuiltinFlags != rhs_storage._noBuiltinFlags {return false}
        if _storage._buildArm64E != rhs_storage._buildArm64E {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ZipBuilder_BlazeFlag: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BlazeFlag"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "flag"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedStringField(value: &self.flag)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.flag.isEmpty {
      try visitor.visitRepeatedStringField(value: self.flag, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: ZipBuilder_BlazeFlag, rhs: ZipBuilder_BlazeFlag) -> Bool {
    if lhs.flag != rhs.flag {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
