.class public final Landroid/car/hardware/avm/CarAvmManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarAvmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/avm/CarAvmManager$CarAvmEventCallback;,
        Landroid/car/hardware/avm/CarAvmManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AVM_STATUS_ALL_ON:I = 0x1

.field public static final AVM_STATUS_DISPLAY_ON:I = 0x3

.field public static final AVM_STATUS_ERROR:I = 0x3

.field public static final AVM_STATUS_INVALID:I = 0x2

.field public static final AVM_STATUS_NO_OPERATION:I = 0xff

.field public static final AVM_STATUS_OFF:I = 0x0

.field public static final AVM_STATUS_ON:I = 0x1

.field public static final AVM_STATUS_SAS_NO_CALIBRATION:I = 0x2

.field public static final AVM_STATUS_SYSTEM_ERROR:I = 0x2

.field public static final CAMERA_ANGLE_START_UP:I = 0x168

.field public static final CAMERA_ANGLE_START_UP_D2:I = 0xb4

.field public static final CAMERA_CALIBRATION_CHANGECAMERA_CHART:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_CALIBRATION_CHANGECAMERA_ONROAD:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_CALIBRATION_OFF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_CALIBRATION_ONEKEY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_CALIBRATION_ONLOAD_CHART:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_CALIBRATION_ONLOAD_ONROAD:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_CALIBRATION_STATUS_FAILED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_CALIBRATION_STATUS_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_CALIBRATION_STAUTS_IN_PROCESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_CHANNEL_360_OR_BACK:I = 0x1

.field public static final CAMERA_CHANNEL_TOP:I = 0x0

.field public static final CAMERA_DOWN:I = 0x0

.field public static final CAMERA_FAULT_STATE_BLOCK:I = 0x2

.field public static final CAMERA_FAULT_STATE_FAILED:I = 0x1

.field public static final CAMERA_FAULT_STATE_NORMAL:I = 0x0

.field public static final CAMERA_INDEX_FRONT:I = 0x3

.field public static final CAMERA_INDEX_LEFT:I = 0x1

.field public static final CAMERA_INDEX_REAR:I = 0x2

.field public static final CAMERA_INDEX_RIGHT:I = 0x0

.field public static final CAMERA_INVALID:I = 0x0

.field public static final CAMERA_STATUS_UNCALIBRATION:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAMERA_TOP_MOVE_STATE_INITALIZE:I = 0x2

.field public static final CAMERA_TOP_MOVE_STATE_NORMAL:I = 0x0

.field public static final CAMERA_TOP_MOVE_STATE_SELF_LEARNING:I = 0x1

.field public static final CAMERA_TOP_STATE_DOWN:I = 0x1

.field public static final CAMERA_TOP_STATE_ERROR:I = 0x7

.field public static final CAMERA_TOP_STATE_FALLING_DOWN:I = 0x4

.field public static final CAMERA_TOP_STATE_RISED_UP:I = 0x3

.field public static final CAMERA_TOP_STATE_RISING_UP:I = 0x2

.field public static final CAMERA_TOP_STATE_ROTATED:I = 0x6

.field public static final CAMERA_TOP_STATE_ROTATING:I = 0x5

.field public static final CAMERA_TYPE_2DAVM:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAMERA_TYPE_2DAVM_2D_FL_SINGLE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAMERA_TYPE_2DAVM_2D_FRONT_SINGLE:I = 0x0

.field public static final CAMERA_TYPE_2DAVM_2D_LEFT_SINGLE:I = 0x2

.field public static final CAMERA_TYPE_2DAVM_2D_REAR_SINGLE:I = 0x1

.field public static final CAMERA_TYPE_2DAVM_2D_RIGHT_SINGLE:I = 0x3

.field public static final CAMERA_TYPE_2DAVM_2D_RL_SINGLE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAMERA_TYPE_2DAVM_2D_R_L_SINGLE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAMERA_TYPE_2DAVM_FRONT_OVERLOOK:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAMERA_TYPE_2DAVM_LR_IMAGE:I = 0x15

.field public static final CAMERA_TYPE_2DAVM_LR_IMAGE_USS:I = 0x14

.field public static final CAMERA_TYPE_2DAVM_REAR_OVERLOOK:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAMERA_TYPE_2D_BIRDVIEW_L:I = 0x2f

.field public static final CAMERA_TYPE_2D_FRONT_CAMERA:I = 0x10

.field public static final CAMERA_TYPE_2D_LEFT_CAMERA:I = 0x12

.field public static final CAMERA_TYPE_2D_LEFT_REAR_CAMERA:I = 0x19

.field public static final CAMERA_TYPE_2D_REAR_CAMERA:I = 0x11

.field public static final CAMERA_TYPE_2D_RIGHT_CAMERA:I = 0x13

.field public static final CAMERA_TYPE_2D_RIGHT_REAR_CAMERA:I = 0x1a

.field public static final CAMERA_TYPE_360_DEG_3D:I = 0x16

.field public static final CAMERA_TYPE_3D_FRONT_SINGLE:I = 0x4

.field public static final CAMERA_TYPE_3D_LEFT_SINGLE:I = 0x6

.field public static final CAMERA_TYPE_3D_REAR_SINGLE:I = 0x5

.field public static final CAMERA_TYPE_3D_RIGHT_SINGLE:I = 0x7

.field public static final CAMERA_TYPE_4_CAMERA:I = 0x8

.field public static final CAMERA_TYPE_4_CAMERA_IMAGE_VIEW_RAW:I = 0x17

.field public static final CAMERA_TYPE_4_CARAMER:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAMERA_TYPE_4_WHEEL_HUB:I = 0x18

.field public static final CAMERA_TYPE_APA_DEBUG_MODE:I = 0x1e

.field public static final CAMERA_TYPE_BEV_2D_FRONT:I = 0xb

.field public static final CAMERA_TYPE_BEV_2D_LEFT:I = 0xd

.field public static final CAMERA_TYPE_BEV_2D_REAR:I = 0xc

.field public static final CAMERA_TYPE_BEV_2D_RIGHT:I = 0xe

.field public static final CAMERA_TYPE_FRONT_L_2D_S:I = 0x28

.field public static final CAMERA_TYPE_HIGH_TEMPERATURE_MODE:I = 0x1f

.field public static final CAMERA_TYPE_LEFT_L_2D_S:I = 0x2a

.field public static final CAMERA_TYPE_NRA_VIEW_MODE:I = 0xa

.field public static final CAMERA_TYPE_OFF:I = 0xf

.field public static final CAMERA_TYPE_PARALLEL_VERTICAL_PARKING_LEFT:I = 0x2e

.field public static final CAMERA_TYPE_PARALLEL_VERTICAL_PARKING_RIGHT:I = 0x2d

.field public static final CAMERA_TYPE_REAR_CAMERA_VIEW:I = 0x32

.field public static final CAMERA_TYPE_REAR_L_NO_TRAIL_LINE_2D_S:I = 0x31

.field public static final CAMERA_TYPE_REAR_L_WITH_TRAIL_LINE_2D_S:I = 0x29

.field public static final CAMERA_TYPE_REAR_S_NO_TRAIL_LINE_2D_L:I = 0x33

.field public static final CAMERA_TYPE_RIGHT_L_2D_S:I = 0x2b

.field public static final CAMERA_TYPE_ROOF_CAMERA:I = 0x2c

.field public static final CAMERA_TYPE_SELF_DEFINED_APA:I = 0x1b

.field public static final CAMERA_TYPE_TRANSPARENT_CHASIS_L:I = 0x34

.field public static final CAMERA_UP_90_DEGREE:I = 0x1

.field private static final DBG:Z = false

.field public static final HAS_CAMERA:I = 0x2

.field public static final ID_AVM_360_3D_ANGLE:I = 0x21403412

.field public static final ID_AVM_CALIBRATION:I = 0x21403402
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_AVM_CALIBRATION_FILE:I = 0x21103414

.field public static final ID_AVM_CAMERA_ANGLE:I = 0x21403409

.field public static final ID_AVM_CAMERA_CAM_POS:I = 0x2140340e

.field public static final ID_AVM_CAMERA_CAM_STATE:I = 0x2140340c

.field public static final ID_AVM_CAMERA_FAULT_ST:I = 0x21413411

.field public static final ID_AVM_CAMERA_FRONT_RADAR:I = 0x2161261c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_AVM_CAMERA_HEIGHT:I = 0x2140340b

.field public static final ID_AVM_CAMERA_ROOF_CAMERA:I = 0x21403408

.field public static final ID_AVM_CAMERA_STEER_ROTATE_ANGLE:I = 0x21602406
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_AVM_CAMERA_TAIL_RADAR:I = 0x2161261d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_AVM_CAM_MOVE_STATE:I = 0x2140340a

.field public static final ID_AVM_DISPLAY_MODE:I = 0x21403401

.field public static final ID_AVM_DISPLAY_MODE_MULSIGNAL:I = 0x2141340f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_AVM_FINETUNE_MODE:I = 0x21403405
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_AVM_OVERLAY_WORK:I = 0x21403403

.field public static final ID_AVM_TRANSPARENT_CHASISST:I = 0x21403404

.field public static final ID_AVM_TRANS_BODY_SW:I = 0x21403413

.field public static final ID_AVM_WORK_ST:I = 0x21403410

.field public static final ID_OMS_PRIVACY_SWITCH:I = 0x21403417

.field public static final ID_OMS_VIDEO_WORK_ST:I = 0x21403415

.field public static final ID_OMS_WORK_ENABLE:I = 0x21403416

.field public static final NO_CAMERA:I = 0x1

.field public static final OMS_STATUS_DISABLE:I = 0x0

.field public static final OMS_STATUS_ENABLE:I = 0x1

.field public static final OMS_VIDEO_STATUS_BLOCK:I = 0x4

.field public static final OMS_VIDEO_STATUS_DISCONNECT:I = 0x6

.field public static final OMS_VIDEO_STATUS_FAULT:I = 0x5

.field public static final OMS_VIDEO_STATUS_INIT:I = 0x1

.field public static final OMS_VIDEO_STATUS_IR:I = 0x2

.field public static final OMS_VIDEO_STATUS_RGB:I = 0x3

.field public static final OMS_VIDEO_STATUS_TEMP:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CarAvmManager"


# instance fields
.field private final mAvmPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarAvmManager"

    .line 951
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 914
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x17

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21403409

    .line 915
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x2140340b

    .line 916
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21403401

    .line 917
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21403408

    .line 918
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x2161261c

    .line 919
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x2161261d

    .line 920
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21602406

    .line 921
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x2140340c

    .line 922
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x2140340e

    .line 923
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2140340a

    .line 924
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21403402

    .line 925
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21403403

    .line 926
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21403404

    .line 927
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21403405

    .line 928
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x2141340f

    .line 929
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21403410

    .line 930
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21413411

    .line 931
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21403412

    .line 932
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21403413

    .line 933
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x21103414

    .line 934
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21403415

    .line 935
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21403416

    .line 936
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x21403417

    .line 937
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    .line 914
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/avm/CarAvmManager;->mAvmPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_avm"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public get3603dAngle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1473
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvm3603dAngle()I

    move-result v0

    return v0
.end method

.method public getAvmCalibrationFile()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21103414

    const/4 v1, 0x0

    .line 1545
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/avm/CarAvmManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvmCalibrationStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmCalibrationMode()I

    move-result v0

    return v0
.end method

.method public getAvmCamerasFaultStates()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmCamerasFaultStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getAvmWorkState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1419
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmWorkState()I

    move-result v0

    return v0
.end method

.method public getCameraAngle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 988
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmCameraAngle()I

    move-result v0

    return v0
.end method

.method public getCameraDisplayMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1076
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmCameraDisplayMode()I

    move-result v0

    return v0
.end method

.method public getFrontRadarData()[F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFrontRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method public final getHasRoofCamera()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1149
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->hasRoofCamera()I

    move-result v0

    return v0
.end method

.method public getOmsVideoWorkStatus()I
    .locals 4

    const v0, 0x21403415

    const/4 v1, 0x0

    .line 1590
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/avm/CarAvmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getOmsVedioWorkStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarAvmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getOverlayWorkSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1307
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmOverlayWorkSt()I

    move-result v0

    return v0
.end method

.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 974
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mAvmPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRoofCameraPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1231
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmRoofCameraPosition()I

    move-result v0

    return v0
.end method

.method public getRoofCameraState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmRoofCameraState()I

    move-result v0

    return v0
.end method

.method public getRoofMoveCameraState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1248
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmCameraInitState()I

    move-result v0

    return v0
.end method

.method public getSteerWheelRotationAngle()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1196
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSteerWheelRotationAngle()F

    move-result v0

    return v0
.end method

.method public getTailRadarData()[F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTailRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method public getTransBodySwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1508
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmTransBodySwitchStatus()I

    move-result v0

    return v0
.end method

.method public getTransparentChassis()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvmTransparentChassisState()I

    move-result v0

    return v0
.end method

.method public set3603dAngle(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1458
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvm3603dAngle(I)V

    return-void
.end method

.method public setAvmCalibration(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1270
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvmCalibrationMode(I)V

    return-void
.end method

.method public setAvmCalibrationFile(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21103414

    const/4 v1, 0x0

    .line 1526
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/avm/CarAvmManager;->setStringProperty(IILjava/lang/String;)V

    return v1
.end method

.method public setCameraAngle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvmCameraAngle(I)V

    return-void
.end method

.method public setCameraDisplayMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvmCameraDisplayMode(I)V

    return-void
.end method

.method public setCameraHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvmRoofCameraRaise(I)V

    return-void
.end method

.method public setFineTuneMode(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvmFineTuneMode(I)V

    return-void
.end method

.method public setMultipleDisplayProperties(IIIII)V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1395
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvmMultipleDisplayProperties(IIIII)V

    return-void
.end method

.method public setOmsPrivacySwitch(I)V
    .locals 2

    const v0, 0x21403417

    const/4 v1, 0x0

    .line 1612
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/avm/CarAvmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setOmsVideoWorkEnable failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAvmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setOmsVideoWorkEnable(I)V
    .locals 2

    const v0, 0x21403416

    const/4 v1, 0x0

    .line 1563
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/avm/CarAvmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setOmsVideoWorkEnable failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAvmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setOverlayWorkSt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvmOverlayWorkSt(I)V

    return-void
.end method

.method public setTransBodySwitchStatus(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvmTransBodySwitchStatus(I)V

    return-void
.end method

.method public setTransparentChassis(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Landroid/car/hardware/avm/CarAvmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvmTransparentChassisState(I)V

    return-void
.end method
