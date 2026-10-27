.class public Lorg/chromium/base/metrics/RecordUserAction;
.super Ljava/lang/Object;
.source "RecordUserAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/metrics/RecordUserAction$UserActionCallback;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lorg/chromium/base/metrics/RecordUserAction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/base/metrics/RecordUserAction;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeAddActionCallbackForTesting(Lorg/chromium/base/metrics/RecordUserAction$UserActionCallback;)J
.end method

.method private static native nativeRecordUserAction(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveActionCallbackForTesting(J)V
.end method
