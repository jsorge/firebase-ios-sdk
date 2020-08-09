/*
 * Copyright 2018 The Firebase Apple SDK Authors
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

#include "Firestore/core/src/auth/token.h"

#include "gtest/gtest.h"

namespace firebase {
namespace firestore {
namespace auth {

TEST(Token, Getter) {
  Token token("token", User("abc"));
  EXPECT_EQ("token", token.token());
  EXPECT_EQ(User("abc"), token.user());
}

TEST(Token, UnauthenticatedToken) {
  const Token& token = Token::Unauthenticated();
  EXPECT_ANY_THROW(token.token());
  EXPECT_EQ(User::Unauthenticated(), token.user());
}

}  // namespace auth
}  // namespace firestore
}  // namespace firebase
