#!/bin/sh
#
# Copyright 2016 Google LLC. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

go install github.com/golang/protobuf/protoc-gen-go@latest

protoc -I . -I ./third_party --go_out=. openapiv2/OpenAPIv2.proto
protoc -I . -I ./third_party --go_out=. openapiv3/OpenAPIv3.proto
protoc -I . -I ./third_party --go_out=. discovery/discovery.proto
protoc -I . -I ./third_party --go_out=. plugins/plugin.proto
protoc -I . -I ./third_party --go_out=. extensions/extension.proto
protoc -I . -I ./third_party --go_out=. surface/surface.proto
protoc -I . -I ./third_party --go_out=. metrics/vocabulary.proto
protoc -I . -I ./third_party --go_out=. metrics/complexity.proto
