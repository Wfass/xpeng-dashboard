.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$AttributeContentType;,
        Landroid/media/AudioAttributes$AttributeUsage;,
        Landroid/media/AudioAttributes$AttributeSdkUsage;,
        Landroid/media/AudioAttributes$AttributeSystemUsage;,
        Landroid/media/AudioAttributes$Builder;,
        Landroid/media/AudioAttributes$SpatializationBehavior;,
        Landroid/media/AudioAttributes$CapturePolicy;
    }
.end annotation


# static fields
.field public static final ALLOW_CAPTURE_BY_ALL:I = 0x1

.field public static final ALLOW_CAPTURE_BY_NONE:I = 0x3

.field public static final ALLOW_CAPTURE_BY_SYSTEM:I = 0x2

.field private static final ALL_PARCEL_FLAGS:I = 0x1

.field private static final ATTR_PARCEL_IS_NULL_BUNDLE:I = -0x7b9

.field private static final ATTR_PARCEL_IS_VALID_BUNDLE:I = 0x7bc

.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_ALL:I = 0x10f7ff

.field private static final FLAG_ALL_API_SET:I = 0x1d1

.field private static final FLAG_ALL_PUBLIC:I = 0x111

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final FLAG_BEACON:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_BYPASS_MUTE:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_CAPTURE_PRIVATE:I = 0x2000

.field public static final FLAG_CONTENT_SPATIALIZED:I = 0x4000

.field public static final FLAG_DEEP_BUFFER:I = 0x200

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field public static final FLAG_HW_HOTWORD:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_LOW_LATENCY:I = 0x100

.field public static final FLAG_MUTE_HAPTIC:I = 0x800

.field public static final FLAG_NEVER_SPATIALIZE:I = 0x8000

.field public static final FLAG_NO_AVAS:I = 0x100000

.field public static final FLAG_NO_MEDIA_PROJECTION:I = 0x400

.field public static final FLAG_NO_SYSTEM_CAPTURE:I = 0x1000

.field public static final FLAG_SCO:I = 0x4

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLATTEN_TAGS:I = 0x1

.field public static final SDK_USAGES:[I

.field public static final SPATIALIZATION_BEHAVIOR_AUTO:I = 0x0

.field public static final SPATIALIZATION_BEHAVIOR_NEVER:I = 0x1

.field public static final SUPPRESSIBLE_ALARM:I = 0x4

.field public static final SUPPRESSIBLE_CALL:I = 0x2

.field public static final SUPPRESSIBLE_MEDIA:I = 0x5

.field public static final SUPPRESSIBLE_NEVER:I = 0x3

.field public static final SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field public static final SUPPRESSIBLE_SYSTEM:I = 0x6

.field public static final SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final SYSTEM_USAGE_OFFSET:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ANNOUNCEMENT:I = 0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_AVAS:I = 0x12

.field public static final USAGE_AVAS_SPEECH:I = 0x17

.field public static final USAGE_CALL_ASSISTANT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USAGE_EMERGENCY:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USAGE_GAME:I = 0xe

.field private static final USAGE_INVALID:I = -0x1

.field public static final USAGE_MASSAGE_SEAT:I = 0x13

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_PASSENGERBT:I = 0x14

.field public static final USAGE_SAFETY:I = 0x3e9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USAGE_SPEECH:I = 0x15

.field public static final USAGE_SYSTEM2:I = 0x16

.field public static final USAGE_UNKNOWN:I = 0x0

.field public static final USAGE_VEHICLE_STATUS:I = 0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field private static final sXsdStringToUsage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mFormattedTags:Ljava/lang/String;

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 304
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x6

    const/4 v4, 0x2

    .line 306
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x7

    .line 307
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x8

    .line 308
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x9

    .line 309
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xa

    .line 310
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xb

    const/4 v6, 0x3

    .line 311
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 313
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v7, 0x4

    .line 314
    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 315
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0xc

    .line 316
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v9, 0xe

    .line 317
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x10

    .line 318
    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x11

    .line 319
    invoke-virtual {v0, v11, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v12, 0x0

    .line 1535
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 321
    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0xd

    .line 322
    invoke-virtual {v0, v12, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x12

    .line 324
    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x13

    .line 325
    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x14

    .line 326
    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x15

    .line 327
    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x16

    .line 328
    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v15, 0x17

    .line 329
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-array v0, v14, [I

    .line 336
    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    .line 1346
    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    .line 1535
    sget-object v14, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v14}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    sget-object v14, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v14}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    sget-object v13, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v13}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1539
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1538
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1541
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1540
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1545
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1544
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1547
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1546
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1549
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1548
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1551
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1550
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    .line 1554
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1553
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1557
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1556
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ea

    .line 1561
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1560
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 550
    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 552
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    const/4 v1, -0x1

    .line 554
    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 556
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 550
    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 552
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    const/4 v1, -0x1

    .line 554
    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 556
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 1319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 1320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 1321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 1323
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1325
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1326
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1328
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1329
    array-length v1, v0

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 1330
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1332
    :cond_2
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    const-string v1, ";"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1334
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, -0x7b9

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7bc

    if-eq v0, v1, :cond_3

    const-string p1, "AudioAttributes"

    const-string v0, "Illegal value unmarshalling AudioAttributes, can\'t initialize bundle"

    .line 1342
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1339
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 1336
    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioAttributes;)I
    .locals 0

    .line 77
    iget p0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p0
.end method

.method static synthetic access$002(Landroid/media/AudioAttributes;I)I
    .locals 0

    .line 77
    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioAttributes;)I
    .locals 0

    .line 77
    iget p0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p0
.end method

.method static synthetic access$102(Landroid/media/AudioAttributes;I)I
    .locals 0

    .line 77
    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$202(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    .line 77
    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$400(Landroid/media/AudioAttributes;)I
    .locals 0

    .line 77
    iget p0, p0, Landroid/media/AudioAttributes;->mSource:I

    return p0
.end method

.method static synthetic access$402(Landroid/media/AudioAttributes;I)I
    .locals 0

    .line 77
    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    return p1
.end method

.method static synthetic access$502(Landroid/media/AudioAttributes;I)I
    .locals 0

    .line 77
    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p1
.end method

.method static synthetic access$572(Landroid/media/AudioAttributes;I)I
    .locals 1

    .line 77
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/2addr p1, v0

    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p1
.end method

.method static synthetic access$576(Landroid/media/AudioAttributes;I)I
    .locals 1

    .line 77
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p1
.end method

.method static synthetic access$602(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Landroid/media/AudioAttributes;)Landroid/os/Bundle;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$702(Landroid/media/AudioAttributes;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 77
    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$800(I)I
    .locals 0

    .line 77
    invoke-static {p0}, Landroid/media/AudioAttributes;->usageForStreamType(I)I

    move-result p0

    return p0
.end method

.method public static capturePolicyToFlags(II)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    or-int/lit16 p0, p1, 0x1400

    goto :goto_0

    .line 1823
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown allow playback capture policy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    or-int/lit16 p0, p1, 0x400

    and-int/lit16 p0, p0, -0x1001

    goto :goto_0

    :cond_2
    and-int/lit16 p0, p1, -0x1401

    :goto_0
    return p0
.end method

.method public static isSystemUsage(I)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 0

    .line 1730
    invoke-static {p0}, Landroid/media/AudioAttributes;->toXpStreamType(Landroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method private static toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .locals 7

    .line 1735
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    return v1

    .line 1739
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    :goto_1
    return v3

    .line 1743
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/16 v4, 0x8

    and-int/2addr v0, v4

    const/16 v5, 0x9

    const/4 v6, 0x3

    if-ne v0, v4, :cond_5

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5

    .line 1748
    :cond_5
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1749
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result p0

    return p0

    .line 1752
    :cond_6
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    if-nez p0, :cond_7

    return v6

    .line 1799
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown usage value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in audio attributes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x11

    return p0

    :pswitch_1
    const/16 p0, 0x10

    return p0

    :pswitch_2
    const/16 p0, 0xf

    return p0

    :pswitch_3
    const/16 p0, 0xe

    return p0

    :pswitch_4
    const/16 p0, 0xd

    return p0

    :pswitch_5
    const/16 p0, 0xc

    return p0

    :pswitch_6
    return v1

    :pswitch_7
    return v5

    :pswitch_8
    const/16 p0, 0xa

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_a
    const/4 p0, 0x5

    return p0

    :pswitch_b
    return v2

    :pswitch_c
    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    move v3, v4

    :goto_2
    :pswitch_d
    return v3

    :pswitch_e
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_8
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e8
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public static toXpStreamType(Landroid/media/AudioAttributes;)I
    .locals 2

    .line 1674
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/16 v0, 0xa

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/16 p0, 0x11

    return p0

    :pswitch_2
    const/16 p0, 0x10

    return p0

    :pswitch_3
    const/16 p0, 0xf

    return p0

    :pswitch_4
    const/16 p0, 0xe

    return p0

    :pswitch_5
    const/16 p0, 0xd

    return p0

    :pswitch_6
    const/16 p0, 0xc

    return p0

    :pswitch_7
    return v0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_9
    const/16 p0, 0x9

    return p0

    :pswitch_a
    return v0

    :pswitch_b
    const/4 p0, 0x7

    return p0

    :pswitch_c
    const/4 p0, 0x2

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_f
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static usageForStreamType(I)I
    .locals 1

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x17

    return p0

    :pswitch_2
    const/16 p0, 0x16

    return p0

    :pswitch_3
    const/16 p0, 0x15

    return p0

    :pswitch_4
    const/16 p0, 0x14

    return p0

    :pswitch_5
    const/16 p0, 0x13

    return p0

    :pswitch_6
    const/16 p0, 0x12

    return p0

    :pswitch_7
    const/16 p0, 0xb

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    return v0

    :pswitch_b
    const/4 p0, 0x5

    return p0

    :pswitch_c
    const/4 p0, 0x4

    return p0

    :pswitch_d
    const/4 p0, 0x1

    return p0

    :pswitch_e
    const/4 p0, 0x6

    return p0

    :pswitch_f
    const/16 p0, 0xd

    return p0

    :pswitch_10
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_f
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static usageToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "USAGE_ANNOUNCEMENT"

    return-object p0

    :pswitch_1
    const-string p0, "USAGE_VEHICLE_STATUS"

    return-object p0

    :pswitch_2
    const-string p0, "USAGE_SAFETY"

    return-object p0

    :pswitch_3
    const-string p0, "USAGE_EMERGENCY"

    return-object p0

    .line 1471
    :pswitch_4
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_AVAS_SPEECH"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1469
    :pswitch_5
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_SYSTEM2"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1467
    :pswitch_6
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_SPEECH"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1465
    :pswitch_7
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_PASSENGERBT"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1463
    :pswitch_8
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_MASSAGE_SEAT"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1461
    :pswitch_9
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_AVAS"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_a
    const-string p0, "USAGE_CALL_ASSISTANT"

    return-object p0

    :pswitch_b
    const-string p0, "USAGE_ASSISTANT"

    return-object p0

    :pswitch_c
    const-string p0, "USAGE_GAME"

    return-object p0

    :pswitch_d
    const-string p0, "USAGE_ASSISTANCE_SONIFICATION"

    return-object p0

    :pswitch_e
    const-string p0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object p0

    :pswitch_f
    const-string p0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    return-object p0

    :pswitch_10
    const-string p0, "USAGE_NOTIFICATION_EVENT"

    return-object p0

    :pswitch_11
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    return-object p0

    :pswitch_12
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    return-object p0

    :pswitch_13
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    return-object p0

    :pswitch_14
    const-string p0, "USAGE_NOTIFICATION_RINGTONE"

    return-object p0

    :pswitch_15
    const-string p0, "USAGE_NOTIFICATION"

    return-object p0

    :pswitch_16
    const-string p0, "USAGE_ALARM"

    return-object p0

    :pswitch_17
    const-string p0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    return-object p0

    :pswitch_18
    const-string p0, "USAGE_VOICE_COMMUNICATION"

    return-object p0

    :pswitch_19
    const-string p0, "USAGE_MEDIA"

    return-object p0

    :pswitch_1a
    const-string p0, "USAGE_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static usageToXsdString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown usage value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioAttributes"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1525
    :pswitch_0
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1523
    :pswitch_1
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1521
    :pswitch_2
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1519
    :pswitch_3
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1517
    :pswitch_4
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1515
    :pswitch_5
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1513
    :pswitch_6
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1511
    :pswitch_7
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1509
    :pswitch_8
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1507
    :pswitch_9
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1505
    :pswitch_a
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1503
    :pswitch_b
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1501
    :pswitch_c
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1499
    :pswitch_d
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1497
    :pswitch_e
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1495
    :pswitch_f
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1493
    :pswitch_10
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1491
    :pswitch_11
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static xsdStringToUsage(Ljava/lang/String;)I
    .locals 2

    .line 1568
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1569
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1571
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage name not found in AudioUsage enum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioAttributes"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public areHapticChannelsMuted()Z
    .locals 1

    .line 655
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contentTypeToString()Ljava/lang/String;
    .locals 3

    .line 1578
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1585
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1584
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1583
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MOVIE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1582
    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MUSIC"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1581
    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SPEECH"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1580
    :cond_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    .line 1393
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1395
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1396
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1397
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1399
    iget-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1400
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_0

    const-wide v4, 0x20900000004L

    .line 1402
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1407
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1366
    :cond_1
    check-cast p1, Landroid/media/AudioAttributes;

    .line 1368
    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v3, p1, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v3, p1, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v3, p1, Landroid/media/AudioAttributes;->mSource:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v3, p1, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1373
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAllFlags()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 624
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, 0x10f7ff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAllowedCapturePolicy()I
    .locals 3

    .line 708
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v1, v0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 634
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-object v0

    .line 637
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getCapturePreset()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 604
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    return v0
.end method

.method public getContentType()I
    .locals 1

    .line 571
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 613
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x111

    return v0
.end method

.method public getSpatializationBehavior()I
    .locals 2

    .line 697
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSystemUsage()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 593
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .line 579
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 582
    :cond_0
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    const/4 v0, 0x1

    .line 1663
    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1378
    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isContentSpatialized()Z
    .locals 1

    .line 665
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1383
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAttributes: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1384
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1385
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1386
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1388
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public usageToString()Ljava/lang/String;
    .locals 1

    .line 1412
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1297
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    and-int/2addr p2, v0

    .line 1301
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p2, :cond_0

    .line 1303
    iget-object p2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 1304
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1305
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 1307
    iget-object p2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1309
    :cond_1
    :goto_0
    iget-object p2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez p2, :cond_2

    const/16 p2, -0x7b9

    .line 1310
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x7bc

    .line 1312
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    iget-object p2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method
