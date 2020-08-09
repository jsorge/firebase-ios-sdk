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

#ifndef FIRESTORE_CORE_SRC_LOCAL_LISTEN_SEQUENCE_H_
#define FIRESTORE_CORE_SRC_LOCAL_LISTEN_SEQUENCE_H_

#include "Firestore/core/src/model/types.h"

namespace firebase {
namespace firestore {
namespace local {

/**
 * ListenSequence is a monotonic sequence. It is initialized with a minimum
 * value to exceed. All subsequent calls to next will return increasing values.
 */
class ListenSequence {
 public:
  explicit ListenSequence(model::ListenSequenceNumber starting_after)
      : previous_sequence_number_(starting_after) {
  }

  model::ListenSequenceNumber Next() {
    previous_sequence_number_++;
    return previous_sequence_number_;
  }

 private:
  model::ListenSequenceNumber previous_sequence_number_;
};

}  // namespace local
}  // namespace firestore
}  // namespace firebase

#endif  // FIRESTORE_CORE_SRC_LOCAL_LISTEN_SEQUENCE_H_
