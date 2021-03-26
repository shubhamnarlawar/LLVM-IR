; ModuleID = '$anon.0.0.0'
source_filename = "string.bal"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__string_table_ptr = internal global i8* null, align 4
@bal_nil_value = internal global i8* null
@"$annotation_data" = global i8* null, align 4
@.str = private unnamed_addr global [13 x i8] c"Hello World!\00", align 1
@.str.1 = private unnamed_addr global [8 x i8] c"RESULT=\00", align 1

define void @main() {
entry:
  %"%0" = alloca i8*, align 8
  %"%1" = alloca i8*, align 8
  %"%3" = alloca i8*, align 8
  %"%4" = alloca i8*, align 8
  %"%6" = alloca i8*, align 8
  br label %bb0

bb0:                                              ; preds = %entry
  %0 = call i8** @new_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %"%1", align 8
  %2 = call i8** @new_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %"%3", align 8
  %"%3_temp" = load i8*, i8** %"%3", align 8
  %call = call i8* @print_string(i8* %"%3_temp")
  store i8* %call, i8** %"%4", align 8
  br label %bb1

bb1:                                              ; preds = %bb0
  %"%1_temp" = load i8*, i8** %"%1", align 8
  %call1 = call i8* @print_string(i8* %"%1_temp")
  store i8* %call1, i8** %"%6", align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb4

bb3:                                              ; No predecessors!
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void
}

declare i8* @print_string(i8*)

declare i8** @new_string(i8*, i32)
