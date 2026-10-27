.class public final Landroid/car/hardware/ciu/CarCiuManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarCiuManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;,
        Landroid/car/hardware/ciu/CarCiuManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AUTO_LOCK_ST_FAIL:I = 0x3

.field public static final AUTO_LOCK_ST_NO_REQUES:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTO_LOCK_ST_NO_REQUEST:I = 0x0

.field public static final AUTO_LOCK_ST_PROCESS:I = 0x1

.field public static final AUTO_LOCK_ST_SUCESS:I = 0x2

.field public static final CAR_WASH_OFF:I = 0x0

.field public static final CAR_WASH_ON:I = 0x1

.field public static final CAR_WASH_STATUS_OFF:I = 0x0

.field public static final CAR_WASH_STATUS_ON:I = 0x1

.field public static final CDU_LIGHT_CHANGE:I = 0x1

.field public static final CDU_LIGHT_NO_CHANGE:I = 0x0

.field public static final CIU_ACTIVATE_DOING:I = 0x1

.field public static final CIU_ACTIVATE_FAIL:I = 0x2

.field public static final CIU_ACTIVATE_NONE:I = 0x0

.field public static final CIU_ACTIVATE_SUCCESS:I = 0x3

.field public static final CIU_DELAY_OFF_CONFIGURE:I = 0x2

.field public static final CIU_DELAY_OFF_NONE:I = 0x0

.field public static final CIU_DELAY_OFF_UPLOAD:I = 0x1

.field public static final CIU_INVALID:I = 0x0

.field public static final CIU_MODE_DATA_UPLOAD:I = 0x3

.field public static final CIU_MODE_DELIVERY_CONFIGURATION:I = 0x1

.field public static final CIU_MODE_DELIVERY_CONFIGURATION_SUCCESS:I = 0x2

.field public static final CIU_MODE_NONE:I = 0x0

.field public static final CIU_RAIN_SW_AUTO:I = 0x0

.field public static final CIU_RAIN_SW_LEVEL1:I = 0x1

.field public static final CIU_RAIN_SW_LEVEL2:I = 0x2

.field public static final CIU_RAIN_SW_LEVEL3:I = 0x3

.field public static final CIU_RAIN_SW_LEVEL4:I = 0x4

.field public static final CIU_VALID:I = 0x1

.field private static final DBG:Z = false

.field public static final DELETE_ALL:I = 0x0

.field public static final DELETE_RESULT_FAIL:I = 0x1

.field public static final DELETE_RESULT_NOT_ACTIVE:I = 0x0

.field public static final DELETE_RESULT_SUCCESS:I = 0x2

.field public static final DELETE_UID:I = 0x1

.field public static final DISTRACTION_OFF:I = 0x0

.field public static final DISTRACTION_ON:I = 0x1

.field public static final DISTRACT_STATUS_FAULT:I = 0x3

.field public static final DISTRACT_STATUS_NOT_ACTIVE:I = 0x0

.field public static final DISTRACT_STATUS_OFF:I = 0x2

.field public static final DISTRACT_STATUS_ON:I = 0x1

.field public static final DMS_MODE_EXTENDED:I = 0x1

.field public static final DMS_MODE_NORMAL:I = 0x0

.field public static final DMS_OFF:I = 0x0

.field public static final DMS_ON:I = 0x1

.field public static final DMS_STATUS_FAULT:I = 0x3

.field public static final DMS_STATUS_NOT_ACTIVE:I = 0x0

.field public static final DMS_STATUS_OFF:I = 0x1

.field public static final DMS_STATUS_ON:I = 0x2

.field public static final DVR_OFF:I = 0x0

.field public static final DVR_ON:I = 0x1

.field public static final DVR_STATUS_FAULT:I = 0x1

.field public static final DVR_STATUS_NORMAL:I = 0x0

.field public static final FACE_ACTION_REQUEST_DOWN:I = 0x5

.field public static final FACE_ACTION_REQUEST_FRONT:I = 0x1

.field public static final FACE_ACTION_REQUEST_LEFT:I = 0x2

.field public static final FACE_ACTION_REQUEST_NO_REQUEST:I = 0x0

.field public static final FACE_ACTION_REQUEST_RIGHT:I = 0x3

.field public static final FACE_ACTION_REQUEST_UP:I = 0x4

.field public static final FACE_ID_ERROR_TYPE_NO_ERROR:I = 0x0

.field public static final FACE_ID_ERROR_TYPE_REPEAT_FACE:I = 0x2

.field public static final FACE_ID_ERROR_TYPE_REPEAT_UID:I = 0x1

.field public static final FACE_ID_MODE_NORMAL:I = 0x1

.field public static final FACE_ID_MODE_PRIMAL:I = 0x0

.field public static final FACE_ID_MODE_XP_PAY:I = 0x2

.field public static final FACE_ID_NO_ACTION:I = 0x0

.field public static final FACE_ID_STATUS_FAIL:I = 0x2

.field public static final FACE_ID_STATUS_OVERTIME:I = 0x3

.field public static final FACE_ID_STATUS_SUCCESS:I = 0x1

.field public static final FACE_ID_SW_STATUS_FAULT:I = 0x2

.field public static final FACE_ID_SW_STATUS_OFF:I = 0x0

.field public static final FACE_ID_SW_STATUS_ON:I = 0x1

.field public static final FACE_NOT_SHIELD:I = 0x0

.field public static final FACE_PRIMAL_NOT_ACTIVE:I = 0x0

.field public static final FACE_SHIELD:I = 0x1

.field public static final FACE_STORAGE_OVERTIME:I = 0x3

.field public static final FACE_STORAGE_PROCESS:I = 0x1

.field public static final FACE_STORAGE_SUCCEED:I = 0x2

.field public static final FATIGUE_OFF:I = 0x0

.field public static final FATIGUE_ON:I = 0x1

.field public static final FATIGUE_STATUS_FAULT:I = 0x3

.field public static final FATIGUE_STATUS_NOT_ACTIVE:I = 0x0

.field public static final FATIGUE_STATUS_OFF:I = 0x2

.field public static final FATIGUE_STATUS_ON:I = 0x1

.field public static final ID_CIU_AUTOLK_ST:I = 0x2140281f

.field public static final ID_CIU_CAR_WASH:I = 0x21402821

.field public static final ID_CIU_CONFIG_ACTIVATE:I = 0x2140282a

.field public static final ID_CIU_DELAY_OFF:I = 0x21402829

.field public static final ID_CIU_DELETE_FACE_ID:I = 0x21402802

.field public static final ID_CIU_DELIVERY_CONFIG:I = 0x2140282b

.field public static final ID_CIU_DISTRACTION_ST:I = 0x21402822

.field public static final ID_CIU_DIST_LVL:I = 0x21402826

.field public static final ID_CIU_DMS_MODE_ST:I = 0x21402824

.field public static final ID_CIU_DMS_SW:I = 0x2140280f

.field public static final ID_CIU_DVR_LOCK:I = 0x21402816

.field public static final ID_CIU_DVR_LOCK_FB:I = 0x2140280e

.field public static final ID_CIU_DVR_MODE:I = 0x21402801

.field public static final ID_CIU_DVR_STATUS:I = 0x21402818

.field public static final ID_CIU_DVR_SWITCH:I = 0x21402827

.field public static final ID_CIU_ERROR_TYPE:I = 0x21402817

.field public static final ID_CIU_FACEACTION:I = 0x21402809

.field public static final ID_CIU_FACE_ID_MODE:I = 0x21402810

.field public static final ID_CIU_FACE_ID_PRIMAL_STATUS:I = 0x2140280c

.field public static final ID_CIU_FACE_ID_STATUS:I = 0x2140280b

.field public static final ID_CIU_FACE_ID_SW:I = 0x2140281b

.field public static final ID_CIU_FACE_SHIELD:I = 0x21402804

.field public static final ID_CIU_FATG_LVL:I = 0x21402825

.field public static final ID_CIU_FATIG_ST:I = 0x21402823

.field public static final ID_CIU_FORMAT_SD:I = 0x2140281d

.field public static final ID_CIU_LIGHT_CHANGE:I = 0x21402828

.field public static final ID_CIU_LIGHT_INTENSITY:I = 0x2140281c

.field public static final ID_CIU_PHOTO_PROCESS:I = 0x21402815

.field public static final ID_CIU_PRIM_FACE_CANCEL:I = 0x21402806

.field public static final ID_CIU_RAIN_SW:I = 0x21402820

.field public static final ID_CIU_REG_HINT:I = 0x2140281a

.field public static final ID_CIU_SD_ST:I = 0x21402803

.field public static final ID_CIU_START_REG_FLAG:I = 0x21402807

.field public static final ID_CIU_START_REG_FLOW:I = 0x21402805

.field public static final ID_CIU_STATUS:I = 0x2140282c

.field public static final ID_CIU_UID:I = 0x2140280d

.field public static final ID_CIU_VALID:I = 0x2140281e

.field public static final ID_CIU_VIDEO_OUTPUT:I = 0x21402811

.field public static final SDCARD_STATUS_ABNORMAL:I = 0x1

.field public static final SDCARD_STATUS_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarCiuManager"


# instance fields
.field private final mCiuPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarCiuManager"

    .line 944
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 885
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x25

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21402801

    .line 886
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21402815

    .line 887
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21402816

    .line 888
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21402818

    .line 889
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21402811

    .line 890
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x2140281d

    .line 891
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21402803

    .line 892
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x2140280d

    .line 893
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x2140281b

    .line 894
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x21402810

    .line 895
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21402802

    .line 896
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x2140280b

    .line 897
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x2140280c

    .line 898
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21402804

    .line 899
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21402817

    .line 900
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x2140281c

    .line 901
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x2140280e

    .line 902
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21402809

    .line 903
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21402806

    .line 904
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x2140281a

    .line 905
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21402805

    .line 906
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21402807

    .line 907
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x2140281e

    .line 908
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x2140281f

    .line 909
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x2140280f

    .line 910
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x21402823

    .line 911
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x21402822

    .line 912
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x21402820

    .line 913
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x21402821

    .line 914
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    const p3, 0x21402824

    .line 915
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d

    aput-object p3, p2, p4

    const p3, 0x21402826

    .line 916
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e

    aput-object p3, p2, p4

    const p3, 0x21402825

    .line 917
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f

    aput-object p3, p2, p4

    const p3, 0x21402827

    .line 918
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20

    aput-object p3, p2, p4

    const p3, 0x21402829

    .line 919
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21

    aput-object p3, p2, p4

    const p3, 0x2140282a

    .line 920
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22

    aput-object p3, p2, p4

    const p3, 0x2140282b

    .line 921
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23

    aput-object p3, p2, p4

    const p3, 0x2140282c

    .line 922
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x24

    aput-object p3, p2, p4

    .line 885
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/ciu/CarCiuManager;->mCiuPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_ciu"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCiuAutoLockSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1274
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuAutoLockSt()I

    move-result v0

    return v0
.end method

.method public getCiuCarWash()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuCarWash()I

    move-result v0

    return v0
.end method

.method public getCiuConfigurationActive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1598
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuConfigurationActive()I

    move-result v0

    return v0
.end method

.method public getCiuDelayOff()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1535
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDelayOff()I

    move-result v0

    return v0
.end method

.method public getCiuDeliveryUploadMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1568
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDeliveryUploadMode()I

    move-result v0

    return v0
.end method

.method public getCiuRainSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuRainSw()I

    move-result v0

    return v0
.end method

.method public getCiuStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1660
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuStatus()I

    move-result v0

    return v0
.end method

.method public getCiuValid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuValid()I

    move-result v0

    return v0
.end method

.method public getDeleteResult()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDeleteFaceIdResult()I

    move-result v0

    return v0
.end method

.method public getDistractionLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1508
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDistractionLevel()I

    move-result v0

    return v0
.end method

.method public getDistractionStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDistractionStatus()I

    move-result v0

    return v0
.end method

.method public getDmsStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 975
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDmsStatus()I

    move-result v0

    return v0
.end method

.method public getDvrEnableState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1629
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDvrEnableState()I

    move-result v0

    return v0
.end method

.method public getDvrFormatStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1364
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDvrFormatStatus()I

    move-result v0

    return v0
.end method

.method public getDvrLockFb()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1374
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDvrLockFb()I

    move-result v0

    return v0
.end method

.method public getDvrMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1284
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDvrMode()I

    move-result v0

    return v0
.end method

.method public getDvrStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1344
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuDvrStatus()I

    move-result v0

    return v0
.end method

.method public getErrorType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuErrorType()I

    move-result v0

    return v0
.end method

.method public getFaceAction()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuFaceAction()I

    move-result v0

    return v0
.end method

.method public getFaceIdPrimalStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuFaceIdPrimalStatus()I

    move-result v0

    return v0
.end method

.method public getFaceIdStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuFaceIdStatus()I

    move-result v0

    return v0
.end method

.method public getFaceIdSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuFaceIDSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getFaceShield()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuFaceShieldStatus()I

    move-result v0

    return v0
.end method

.method public getFatigueLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1496
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuFatigueLevel()I

    move-result v0

    return v0
.end method

.method public getFatigueStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1459
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuFatigueStatus()I

    move-result v0

    return v0
.end method

.method public getLightIntensity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuLightIntensity()I

    move-result v0

    return v0
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

    .line 959
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mCiuPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSdStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuSdStatus()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCiuUid()I

    move-result v0

    return v0
.end method

.method public photoProcess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1304
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuPhotoProcess()V

    return-void
.end method

.method public setCiuCarWash(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuCarWash(I)V

    return-void
.end method

.method public setCiuConfigurationActive(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1581
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuConfigurationActive(I)V

    return-void
.end method

.method public setCiuDelayOff(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1521
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuDelayOff(I)V

    return-void
.end method

.method public setCiuDeliveryUploadMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1551
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuDeliveryUploadMode(I)V

    return-void
.end method

.method public setCiuRainSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1387
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuRainSw(I)V

    return-void
.end method

.method public setDeleteFaceId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuDeleteFaceId(I)V

    return-void
.end method

.method public setDeleteMulti(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuDeleteMulti(II)V

    return-void
.end method

.method public setDistractionStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuDistractionStatus(I)V

    return-void
.end method

.method public setDmsMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1483
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuDmsMode(I)V

    return-void
.end method

.method public setDmsStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 988
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuDmsStatus(I)V

    return-void
.end method

.method public setDmsStatus(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMultipleDmsStatus(IIII)V

    return-void
.end method

.method public setDvrEnable(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1614
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDvrEnable(I)V

    return-void
.end method

.method public setDvrLockMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1314
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuDvrLockMode(I)V

    return-void
.end method

.method public setDvrMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1294
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuDvrMode(I)V

    return-void
.end method

.method public setFaceActionRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1221
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuFaceActionRequest(I)V

    return-void
.end method

.method public setFaceIdMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuFaceIdMode(I)V

    return-void
.end method

.method public setFaceIdSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1130
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuFaceIdSwitch(I)V

    return-void
.end method

.method public setFatigueStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1471
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuFatigueStatus(I)V

    return-void
.end method

.method public setFirmFaceCancel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1233
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuFirmFaceCancel(I)V

    return-void
.end method

.method public setFormatMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuFormatMode(I)V

    return-void
.end method

.method public setNotifyCiuAutoLightStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1648
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setNotifyCiuAutoLightStatus(I)V

    return-void
.end method

.method public setRegHint(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuRegHint(I)V

    return-void
.end method

.method public setRegisterRequestMulti(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuRegisterRequestMulti(III)V

    return-void
.end method

.method public setStartRegFlag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuStartRegFlag(I)V

    return-void
.end method

.method public setStartRegFlow(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuStartRegFlow(I)V

    return-void
.end method

.method public setUid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuUid(I)V

    return-void
.end method

.method public setVideoOutputMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1324
    iget-object v0, p0, Landroid/car/hardware/ciu/CarCiuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCiuVideoOutputMode(I)V

    return-void
.end method
