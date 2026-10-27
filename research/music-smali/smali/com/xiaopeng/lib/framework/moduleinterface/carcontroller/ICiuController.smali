.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController;
.super Ljava/lang/Object;
.source "ICiuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuConfigurationActiveEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuDeliveryUploadModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuDelayOffEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$FatigueLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$DistractionLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$DmsStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$DistractionStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$FatigueStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuCarWashEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuRainSwEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuDVREnableEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuDVRFormatSdEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuDVRLockFBEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuDVRStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuSdCompatEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuSdStEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuVideoOutputEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuVideoTimeLenEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuDVRLokEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuPhotoProcessEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuDVRModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuAutoLockStEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$CiuValidEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$FaceActionEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$DeleteResultEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$FaceIdSwEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$FaceIdPrimalStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$FaceUIdEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$FaceIdStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$FatIgStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$FaceShieldEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$LightIntensityEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController$ErrorTypeEventMsg;
    }
.end annotation


# static fields
.field public static final AUTO_LOCK_ST_FAIL:I = 0x3

.field public static final AUTO_LOCK_ST_NO_REQUES:I = 0x0

.field public static final AUTO_LOCK_ST_PROCESS:I = 0x1

.field public static final AUTO_LOCK_ST_SUCESS:I = 0x2

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

.field public static final DELETE_ALL:I = 0x0

.field public static final DELETE_RESULT_FAIL:I = 0x1

.field public static final DELETE_RESULT_NOT_ACTIVE:I = 0x0

.field public static final DELETE_RESULT_SUCCESS:I = 0x2

.field public static final DELETE_UID:I = 0x1

.field public static final DISTRACTIONSTATUS_OFF:I = 0x0

.field public static final DISTRACTIONSTATUS_ON:I = 0x1

.field public static final DISTRACT_STATUS_FAULT:I = 0x3

.field public static final DISTRACT_STATUS_NOT_ACTIVE:I = 0x0

.field public static final DISTRACT_STATUS_OFF:I = 0x2

.field public static final DISTRACT_STATUS_ON:I = 0x1

.field public static final DMS_MODE_EXTENDED:I = 0x1

.field public static final DMS_MODE_NORMAL:I = 0x0

.field public static final DMS_STATE_OFF:I = 0x0

.field public static final DMS_STATE_ON:I = 0x1

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

.field public static final FACE_ID_STATUS_FAIL:I = 0x1

.field public static final FACE_ID_STATUS_OVERTIME:I = 0x2

.field public static final FACE_ID_STATUS_SUCCESS:I = 0x0

.field public static final FACE_ID_SW_STATUS_FAULT:I = 0x2

.field public static final FACE_ID_SW_STATUS_OFF:I = 0x0

.field public static final FACE_ID_SW_STATUS_ON:I = 0x1

.field public static final FACE_STORAGE_OVERTIME:I = 0x2

.field public static final FACE_STORAGE_PROCESS:I = 0x0

.field public static final FACE_STORAGE_SUCCEED:I = 0x1

.field public static final FATIGUESTATUS_OFF:I = 0x0

.field public static final FATIGUESTATUS_ON:I = 0x1

.field public static final FATIGUE_STATUS_FAULT:I = 0x3

.field public static final FATIGUE_STATUS_NOT_ACTIVE:I = 0x0

.field public static final FATIGUE_STATUS_OFF:I = 0x2

.field public static final FATIGUE_STATUS_ON:I = 0x1

.field public static final FAT_IG_STATUS_FAULT:I = 0x2

.field public static final FAT_IG_STATUS_OFF:I = 0x0

.field public static final FAT_IG_STATUS_ON:I = 0x1


# virtual methods
.method public abstract getCiuAutoLockSt()I
.end method

.method public abstract getCiuCarWash()Z
.end method

.method public abstract getCiuConfigurationActive()I
.end method

.method public abstract getCiuDelayOff()I
.end method

.method public abstract getCiuDeliveryUploadMode()I
.end method

.method public abstract getCiuRainSw()I
.end method

.method public abstract getCiuValid()I
.end method

.method public abstract getDVRFormatStatus()I
.end method

.method public abstract getDVRStatus()I
.end method

.method public abstract getDeleteResult()I
.end method

.method public abstract getDistractionLevel()I
.end method

.method public abstract getDistractionStatus()I
.end method

.method public abstract getDmsState()I
.end method

.method public abstract getDvrLockFB()I
.end method

.method public abstract getDvrMode()I
.end method

.method public abstract getErrorType()I
.end method

.method public abstract getFaceAction()I
.end method

.method public abstract getFaceIdPrimalStatus()I
.end method

.method public abstract getFaceIdStatus()I
.end method

.method public abstract getFaceIdSw()I
.end method

.method public abstract getFaceShield()Z
.end method

.method public abstract getFatIgStatus()I
.end method

.method public abstract getFatigueLevel()I
.end method

.method public abstract getFatigueStatus()I
.end method

.method public abstract getLightIntensity()I
.end method

.method public abstract getSdStatus()I
.end method

.method public abstract getSdcardStatus()I
.end method

.method public abstract getUid()I
.end method

.method public abstract isDvrEnable()Z
.end method

.method public abstract photoProcess()V
.end method

.method public abstract setCiuCarWash(Z)V
.end method

.method public abstract setCiuConfigurationActive(I)V
.end method

.method public abstract setCiuDelayOff(I)V
.end method

.method public abstract setCiuDeliveryUploadMode(I)V
.end method

.method public abstract setCiuRainSw(I)V
.end method

.method public abstract setDeleteFaceId(I)V
.end method

.method public abstract setDeleteMulti(II)V
.end method

.method public abstract setDistractionStatus(I)V
.end method

.method public abstract setDmsMode(I)V
.end method

.method public abstract setDmsStatus(I)V
.end method

.method public abstract setDmsStatus(IIII)V
.end method

.method public abstract setDvrEnable(Z)V
.end method

.method public abstract setDvrLockMode(I)V
.end method

.method public abstract setDvrMode(I)V
.end method

.method public abstract setFaceActionRequest(I)V
.end method

.method public abstract setFaceIdMode(I)V
.end method

.method public abstract setFaceIdSw(I)V
.end method

.method public abstract setFatIgStatus(I)V
.end method

.method public abstract setFatigueStatus(I)V
.end method

.method public abstract setFirmFaceCancel(I)V
.end method

.method public abstract setFormatMode(I)V
.end method

.method public abstract setNotifyCiuAutoLightStatus(Z)V
.end method

.method public abstract setRegHint(I)V
.end method

.method public abstract setRegisterRequestMulti(III)V
.end method

.method public abstract setStartRegFlag(I)V
.end method

.method public abstract setStartRegFlow(I)V
.end method

.method public abstract setUid(I)V
.end method

.method public abstract setVideoOutputMode(I)V
.end method

.method public abstract setVideoTimeLenMode(I)V
.end method
