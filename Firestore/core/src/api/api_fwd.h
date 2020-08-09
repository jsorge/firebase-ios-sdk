/*
 * Copyright 2020 The Firebase Apple SDK Authors
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

#ifndef FIRESTORE_CORE_SRC_API_API_FWD_H_
#define FIRESTORE_CORE_SRC_API_API_FWD_H_

#include <memory>

namespace firebase {
namespace firestore {

namespace core {
template <typename T>
class EventListener;
}  // namespace core

namespace api {

class CollectionReference;
class DocumentChange;
class DocumentReference;
class DocumentSnapshot;
class Firestore;
class ListenerRegistration;
class Query;
class QuerySnapshot;
class Settings;
class SnapshotMetadata;
class WriteBatch;

enum class Source;

using DocumentSnapshotListener =
    std::unique_ptr<core::EventListener<DocumentSnapshot>>;

using QuerySnapshotListener =
    std::unique_ptr<core::EventListener<QuerySnapshot>>;

}  // namespace api
}  // namespace firestore
}  // namespace firebase

#endif  // FIRESTORE_CORE_SRC_API_API_FWD_H_
