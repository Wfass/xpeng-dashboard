.class public Landroid/car/hardware/input/CarInputManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarInputManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;,
        Landroid/car/hardware/input/CarInputManager$PropertyId;
    }
.end annotation


# static fields
.field public static final ADJ_DOWN:I = 0x1

.field public static final ADJ_UP:I = 0x0

.field public static final AUTO_MODE:I = 0x3

.field public static final DAY_MODE:I = 0x1

.field private static final DBG:Z = false

.field public static final DOUBLE_CLICK:I = 0x3

.field public static final DRIVING_RECORD_PHOTO:I = 0x2

.field public static final DRIVING_RECORD_VIDEO:I = 0x3

.field public static final FACE_FOOT_MODE:I = 0x2

.field public static final FACE_MODE:I = 0x1

.field public static final FDEFROST_MODE:I = 0x5

.field public static final FOOT_DEFROST_MODE:I = 0x4

.field public static final FOOT_MODE:I = 0x3

.field public static final HAS_REQUEST:I = 0x1

.field public static final ID_AM_REQUEST:I = 0x21402222

.field public static final ID_BACK_LIGHT_ADJ_REQUEST:I = 0x21412220

.field public static final ID_BT_MUSIC_REQUEST:I = 0x21402224

.field public static final ID_DAY_NIGHT_MODE_REQUEST:I = 0x2140221a

.field public static final ID_FM_REQUEST:I = 0x21402223

.field public static final ID_ICM_USER_DEF_REQUEST:I = 0x2140221c

.field public static final ID_KNOB_TALKING_BOOK_REQUSET:I = 0x2140222a

.field public static final ID_LOCAL_MUSIC_REQUEST:I = 0x21402226

.field public static final ID_NAVI_REQUEST:I = 0x21402219

.field public static final ID_SWS_BUTTON_RAWDATA:I = 0x2141222c

.field public static final ID_SWS_CAP_INFO:I = 0x21412242

.field public static final ID_SWS_LL_BUTTON_RAW:I = 0x21402232

.field public static final ID_SWS_LL_RR_BUTTON_RAW_NOT_PRESS:I = 0x0

.field public static final ID_SWS_LL_RR_BUTTON_RAW_PRESS:I = 0x1

.field public static final ID_SWS_LR_BUTTON_RAW:I = 0x21402233

.field public static final ID_SWS_LSATELLITE_CONF_BTN_RAW:I = 0x21402240

.field public static final ID_SWS_LTOUCH_PAD_BUTTON_RAW:I = 0x2140223a

.field public static final ID_SWS_LVOICE_BUTTON_RAW:I = 0x21402237

.field public static final ID_SWS_LXPENG_BUTTON_RAW:I = 0x21402243

.field public static final ID_SWS_RKNOB_OK_BUTTON_RAW:I = 0x21402236

.field public static final ID_SWS_RL_BUTTON_RAW:I = 0x21402234

.field public static final ID_SWS_RR_BUTTON_RAW:I = 0x21402235

.field public static final ID_SWS_RSATELLITE_CONF_BTN_RAW:I = 0x21402241

.field public static final ID_SWS_RTOUCH_PAD_BUTTON_RAW:I = 0x2140223b

.field public static final ID_TEMP_ADJ_REQUEST:I = 0x21412221

.field public static final ID_UPLOAD_CAN_LOG_REQUEST:I = 0x21402228

.field public static final ID_USB_MUSIC_REQUEST:I = 0x21402229

.field public static final ID_VOICE_RESET_REQUEST:I = 0x2140222b

.field public static final ID_WEB_RADIO_REQUEST:I = 0x21402225

.field public static final ID_WIND_EXIT_MODE_REQUEST:I = 0x2140221b

.field public static final ID_WIND_SPD_ADJ_REQUEST:I = 0x2141221f

.field public static final KNOB_TWIRL:I = 0x4

.field public static final LONG_CLICK:I = 0x2

.field public static final NAVI_COMPANY:I = 0x2

.field public static final NAVI_HOME:I = 0x1

.field public static final NIGHT_MODE:I = 0x2

.field public static final NO_REQUEST:I = 0x0

.field public static final SHORT_CLICK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarInputManager"

.field public static final TOP_CAMERA_PHOTO:I = 0x1


# instance fields
.field private final mInputPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p3, 0x0

    const-string p4, "CarInputManager"

    .line 523
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 479
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x1d

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x2141221f

    .line 480
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21412220

    .line 481
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21412221

    .line 482
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21402222

    .line 483
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21402223

    .line 484
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21402224

    .line 485
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21402225

    .line 486
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21402226

    .line 487
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21402219

    .line 488
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2140221a

    .line 489
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x2140221b

    .line 490
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x2140221c

    .line 491
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21402229

    .line 492
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x2140222a

    .line 493
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x2140222b

    .line 494
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21402228

    .line 495
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x2141222c

    .line 496
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21402232

    .line 497
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21402233

    .line 498
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x21402234

    .line 499
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21402235

    .line 500
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21402236

    .line 501
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x21402237

    .line 502
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21402240

    .line 503
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21402241

    .line 504
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x2140223a

    .line 505
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x2140223b

    .line 506
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x21402243

    .line 507
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x21412242

    .line 508
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    .line 479
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/input/CarInputManager;->mInputPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_input"

    return-object v0
.end method


# virtual methods
.method public getAllHandlePosSwSCapInfo()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21412242

    const/4 v1, 0x0

    .line 569
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/input/CarInputManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Landroid/car/hardware/input/CarInputManager;->mInputPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSwsButtonsRawData()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Landroid/car/hardware/input/CarInputManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSwsButtonsRawData()[I

    move-result-object v0

    return-object v0
.end method
