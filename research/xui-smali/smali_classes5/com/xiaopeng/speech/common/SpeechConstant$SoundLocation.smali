.class public Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;
.super Ljava/lang/Object;
.source "SpeechConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/common/SpeechConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundLocation"
.end annotation


# static fields
.field public static final ALL_LOCATION:I = 0x0

.field public static final ALL_LOCATION_NEW:I = 0x3e7

.field public static final BACK_LEFT:I

.field public static final BACK_RIGHT:I

.field public static final DEF_DOA_DB_LOCK:Ljava/lang/String; = "20"

.field public static final DEF_DOA_DB_UNLOCK:Ljava/lang/String; = "0"

.field public static final DEF_DRIVER_ANGLE:I = 0x37

.field public static final DEF_PASSENGER_ANGLE:I = 0x7d

.field public static final DRIVE_END_ANGLE:I = 0x4b

.field public static final DRIVE_LOCATION:I = 0x1

.field public static final DRIVE_START_ANGLE:I = 0x23

.field public static final MAX_ANGLE:I = 0xa0

.field public static final MAX_ANGLE_OFFSET:I = 0xf

.field public static final MIN_ANGLE:I = 0x14

.field public static final PASSENGER_END_ANGLE:I = 0x91

.field public static final PASSENGER_LOCATION:I = 0x2

.field public static final PASSENGER_START_ANGLE:I = 0x69

.field public static final REAR_LEFT:I

.field public static final REAR_MIDDLE:I = 0x5

.field public static final REAR_RIGHT:I

.field public static final SOUND_MODE_INCALL:I = 0x1

.field public static final SOUND_MODE_OTHER:I = 0x0

.field public static final VAD_LOCK_MAX:I = 0x14

.field public static final VAD_LOCK_MIN:I = 0xf

.field public static final VAD_UNLOCK_MAX:I = 0x28

.field public static final VAD_UNLOCK_MIN:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 242
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 243
    .local v0, "isRightRudder":Z
    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 244
    sput v4, Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;->REAR_LEFT:I

    .line 245
    sput v3, Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;->REAR_RIGHT:I

    .line 246
    sput v2, Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;->BACK_LEFT:I

    .line 247
    sput v1, Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;->BACK_RIGHT:I

    goto :goto_1

    .line 249
    :cond_1
    sput v3, Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;->REAR_LEFT:I

    .line 250
    sput v4, Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;->REAR_RIGHT:I

    .line 251
    sput v1, Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;->BACK_LEFT:I

    .line 252
    sput v2, Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;->BACK_RIGHT:I

    .line 254
    .end local v0    # "isRightRudder":Z
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
