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

/* Automatically generated nanopb header */
/* Generated by nanopb-0.3.9.5 */

#ifndef PB_GOOGLE_CRASHLYTICS_CRASHLYTICS_NANOPB_H_INCLUDED
#define PB_GOOGLE_CRASHLYTICS_CRASHLYTICS_NANOPB_H_INCLUDED
#include <nanopb/pb.h>

/* @@protoc_insertion_point(includes) */
#if PB_PROTO_HEADER_VERSION != 30
#error Regenerate this file with the current version of nanopb generator.
#endif


/* Enum definitions */
typedef enum _google_crashlytics_Platforms {
    google_crashlytics_Platforms_UNKNOWN_PLATFORM = 0,
    google_crashlytics_Platforms_IOS = 1,
    google_crashlytics_Platforms_TVOS = 2,
    google_crashlytics_Platforms_MAC_OS_X = 5
} google_crashlytics_Platforms;
#define _google_crashlytics_Platforms_MIN google_crashlytics_Platforms_UNKNOWN_PLATFORM
#define _google_crashlytics_Platforms_MAX google_crashlytics_Platforms_MAC_OS_X
#define _google_crashlytics_Platforms_ARRAYSIZE ((google_crashlytics_Platforms)(google_crashlytics_Platforms_MAC_OS_X+1))

/* Struct definitions */
typedef struct _google_crashlytics_FilesPayload {
    pb_size_t files_count;
    struct _google_crashlytics_FilesPayload_File *files;
/* @@protoc_insertion_point(struct:google_crashlytics_FilesPayload) */
} google_crashlytics_FilesPayload;

typedef struct _google_crashlytics_FilesPayload_File {
    pb_bytes_array_t *filename;
    pb_bytes_array_t *contents;
/* @@protoc_insertion_point(struct:google_crashlytics_FilesPayload_File) */
} google_crashlytics_FilesPayload_File;

typedef struct _google_crashlytics_Report {
    pb_bytes_array_t *sdk_version;
    pb_bytes_array_t *gmp_app_id;
    google_crashlytics_Platforms platform;
    pb_bytes_array_t *installation_uuid;
    pb_bytes_array_t *build_version;
    pb_bytes_array_t *display_version;
    google_crashlytics_FilesPayload apple_payload;
/* @@protoc_insertion_point(struct:google_crashlytics_Report) */
} google_crashlytics_Report;

/* Default values for struct fields */

/* Initializer values for message structs */
#define google_crashlytics_Report_init_default   {NULL, NULL, _google_crashlytics_Platforms_MIN, NULL, NULL, NULL, google_crashlytics_FilesPayload_init_default}
#define google_crashlytics_FilesPayload_init_default {0, NULL}
#define google_crashlytics_FilesPayload_File_init_default {NULL, NULL}
#define google_crashlytics_Report_init_zero      {NULL, NULL, _google_crashlytics_Platforms_MIN, NULL, NULL, NULL, google_crashlytics_FilesPayload_init_zero}
#define google_crashlytics_FilesPayload_init_zero {0, NULL}
#define google_crashlytics_FilesPayload_File_init_zero {NULL, NULL}

/* Field tags (for use in manual encoding/decoding) */
#define google_crashlytics_FilesPayload_files_tag 1
#define google_crashlytics_FilesPayload_File_filename_tag 1
#define google_crashlytics_FilesPayload_File_contents_tag 2
#define google_crashlytics_Report_sdk_version_tag 1
#define google_crashlytics_Report_gmp_app_id_tag 3
#define google_crashlytics_Report_platform_tag   4
#define google_crashlytics_Report_installation_uuid_tag 5
#define google_crashlytics_Report_build_version_tag 6
#define google_crashlytics_Report_display_version_tag 7
#define google_crashlytics_Report_apple_payload_tag 10

/* Struct field encoding specification for nanopb */
extern const pb_field_t google_crashlytics_Report_fields[8];
extern const pb_field_t google_crashlytics_FilesPayload_fields[2];
extern const pb_field_t google_crashlytics_FilesPayload_File_fields[3];

/* Maximum encoded size of messages (where known) */
/* google_crashlytics_Report_size depends on runtime parameters */
/* google_crashlytics_FilesPayload_size depends on runtime parameters */
/* google_crashlytics_FilesPayload_File_size depends on runtime parameters */

/* Message IDs (where set with "msgid" option) */
#ifdef PB_MSGID

#define CRASHLYTICS_MESSAGES \


#endif

/* @@protoc_insertion_point(eof) */

#endif
