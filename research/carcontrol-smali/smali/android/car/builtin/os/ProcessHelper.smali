.class public final Landroid/car/builtin/os/ProcessHelper;
.super Ljava/lang/Object;
.source "ProcessHelper.java"


# static fields
.field public static final AUDIOSERVER_UID:I = 0x411

.field public static final CAMERASERVER_UID:I = 0x417

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field public static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_TOP_APP:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
