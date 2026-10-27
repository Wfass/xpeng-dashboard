.class public final Lcom/android/car/internal/common/CommonConstants;
.super Ljava/lang/Object;
.source "CommonConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/internal/common/CommonConstants$UserLifecycleEventType;
    }
.end annotation


# static fields
.field public static final CAR_SERVICE_INTERFACE:Ljava/lang/String; = "android.car.ICar"

.field public static final USER_LIFECYCLE_EVENT_TYPE_STARTING:I = 0x1

.field public static final USER_LIFECYCLE_EVENT_TYPE_STOPPED:I = 0x6

.field public static final USER_LIFECYCLE_EVENT_TYPE_STOPPING:I = 0x5

.field public static final USER_LIFECYCLE_EVENT_TYPE_SWITCHING:I = 0x2

.field public static final USER_LIFECYCLE_EVENT_TYPE_UNLOCKED:I = 0x4

.field public static final USER_LIFECYCLE_EVENT_TYPE_UNLOCKING:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains only static constants"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
