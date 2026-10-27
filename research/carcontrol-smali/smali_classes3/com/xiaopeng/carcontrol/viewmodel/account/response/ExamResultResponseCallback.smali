.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;
.super Ljava/lang/Object;
.source "ExamResultResponseCallback.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;


# static fields
.field public static final REQUEST_FORM_LOGIN:I = 0x0

.field public static final REQUEST_FROM_LOOP:I = 0x2

.field public static final REQUEST_FROM_OPERATION:I = 0x1


# virtual methods
.method public abstract onExamTaskSuccess(JII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "result",
            "origin"
        }
    .end annotation
.end method
