.class public Lcom/xiaopeng/xuiservice/XUIConfig;
.super Ljava/lang/Object;
.source "XUIConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/XUIConfig$BusinessModule;
    }
.end annotation


# static fields
.field public static final AMBIENT_LIGHT_CONTROLLER:I = 0x2

.field public static final AMBIENT_LIGHT_LITE:I = 0x1

.field public static final AMBIENT_LIGHT_NORMAL:I = 0x0

.field public static final AMBIENT_LIGHT_NO_ATL:I = -0x1

.field public static final BOOT_SOUND_SUPPORT_TYPE_ATLS:I = 0x0

.field public static final BOOT_SOUND_SUPPORT_TYPE_IG_STATUS:I = 0x1

.field public static final CFC_CODE_HIGH:I = 0x3

.field public static final CFC_CODE_INVALID:I = 0x0

.field public static final CFC_CODE_LOW:I = 0x1

.field public static final CFC_CODE_MIDDLE:I = 0x2

.field public static final CFC_CODE_TRIP:I = 0x4

.field private static final HARDWARE_SOFTWARE_VERSION_PROPERTY:Ljava/lang/String; = "ro.xiaopeng.software"

.field public static final HAS_CIU:I = 0x1

.field public static final HAS_XPU:I = 0x0

.field public static final ICM_TYPE_NEW:I = 0x1

.field public static final ICM_TYPE_ORIGIN:I = 0x0

.field public static final ICM_TYPE_SINGLEANDROID:I = 0x2

.field public static final INVALID:I = 0x0

.field public static final LLU_TYPE_DICTIONARY:I = 0x0

.field public static final LLU_TYPE_INFINITE:I = 0x1

.field public static final PROPERTY_AMP:Ljava/lang/String; = "AMP"

.field public static final PROPERTY_AQS:Ljava/lang/String; = "AQS"

.field public static final PROPERTY_ATLS:Ljava/lang/String; = "ATLS"

.field public static final PROPERTY_AVAS:Ljava/lang/String; = "AVAS"

.field public static final PROPERTY_AVM:Ljava/lang/String; = "AVM"

.field public static final PROPERTY_AWARENESS:Ljava/lang/String; = "awareness"

.field public static final PROPERTY_BOOT_COMPLETE:Ljava/lang/String; = "sys.boot_completed"

.field public static final PROPERTY_CIU:Ljava/lang/String; = "CIU"

.field public static final PROPERTY_CONTEXTINFO:Ljava/lang/String; = "contextinfo"

.field public static final PROPERTY_CWC:Ljava/lang/String; = "CWC"

.field public static final PROPERTY_DOLBY:Ljava/lang/String; = "DOLBY"

.field public static final PROPERTY_FRIDGE_FEATURE:Ljava/lang/String; = "refrigerator"

.field public static final PROPERTY_IMU:Ljava/lang/String; = "IMU"

.field public static final PROPERTY_IPUF:Ljava/lang/String; = "IPUF"

.field public static final PROPERTY_IPUR:Ljava/lang/String; = "IPUR"

.field public static final PROPERTY_KARAOKE:Ljava/lang/String; = "karaoke"

.field public static final PROPERTY_LLU:Ljava/lang/String; = "LLU"

.field public static final PROPERTY_MAKEUP_MIRROR:Ljava/lang/String; = "MAKEUP_MIRROR"

.field public static final PROPERTY_MEDIACENTER:Ljava/lang/String; = "mediacenter"

.field public static final PROPERTY_MIRROR:Ljava/lang/String; = "MIRROR"

.field public static final PROPERTY_MRR:Ljava/lang/String; = "MRR"

.field public static final PROPERTY_MSB:Ljava/lang/String; = "MSB"

.field public static final PROPERTY_MSMD:Ljava/lang/String; = "MSMD"

.field public static final PROPERTY_MSMD_MASSG:Ljava/lang/String; = "MSMD_MASSG"

.field public static final PROPERTY_MSMP:Ljava/lang/String; = "MSMP"

.field public static final PROPERTY_MSMP_MASSG:Ljava/lang/String; = "MSMP_MASSG"

.field public static final PROPERTY_MUSICRECOGNIZE:Ljava/lang/String; = "musicrecognize"

.field public static final PROPERTY_NFC:Ljava/lang/String; = "NFC"

.field public static final PROPERTY_PAS:Ljava/lang/String; = "PAS"

.field public static final PROPERTY_REAR_SCREEN:Ljava/lang/String; = "SFM"

.field public static final PROPERTY_RLS:Ljava/lang/String; = "RLS"

.field public static final PROPERTY_SCISSORGATE:Ljava/lang/String; = "scissorsGate"

.field public static final PROPERTY_SCU:Ljava/lang/String; = "SCU"

.field public static final PROPERTY_SECROW_LT_MASSG:Ljava/lang/String; = "SECROW_LT_MASSG"

.field public static final PROPERTY_SECROW_RT_MASSG:Ljava/lang/String; = "SECROW_RT_MASSG"

.field public static final PROPERTY_SFS_FEATURE:Ljava/lang/String; = "SFS"

.field public static final PROPERTY_SHC:Ljava/lang/String; = "SHC"

.field public static final PROPERTY_SMART:Ljava/lang/String; = "smart"

.field public static final PROPERTY_SRR_FL:Ljava/lang/String; = "SRR_FL"

.field public static final PROPERTY_SRR_FR:Ljava/lang/String; = "SRR_FR"

.field public static final PROPERTY_SRR_RL:Ljava/lang/String; = "SRR_RL"

.field public static final PROPERTY_SRR_RR:Ljava/lang/String; = "SRR_RR"

.field public static final PROPERTY_SVM:Ljava/lang/String; = "FSEAT_RHYTHM"

.field public static final PROPERTY_TARGET_LOG_LEVEL:Ljava/lang/String; = "persist.sys.xiaopeng.xuisvc.loglevel"

.field public static final PROPERTY_UVCCAMERA_PREVIEW_ENABLE:Ljava/lang/String; = "persist.uvccamera.preview.enable"

.field public static final PROPERTY_VPM:Ljava/lang/String; = "VPM"

.field public static final PROPERTY_XAPP:Ljava/lang/String; = "xapp"

.field public static final PROPERTY_XPU:Ljava/lang/String; = "XPU"

.field public static final PROPERTY_XSPORT:Ljava/lang/String; = "XSPORT"

.field private static final TAG:Ljava/lang/String; = "XUIConfig"

.field public static final UNKNOW:I = -0x1

.field public static final XUI_SHARE_CONFIRM_NOTIFICATION_ID:I = 0x1

.field public static final XUI_SYS_MEDIA_BOOT_PATH:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/boot/"

.field public static final XUI_SYS_MEDIA_MP3_PATH:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/mp3/"

.field public static final XUI_SYS_MEDIA_PATH:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/"

.field public static final XUI_SYS_MEDIA_WAV_PATH:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/"

.field public static final XUI_SYS_RSC_PATH:Ljava/lang/String; = "/system/etc/xuiservice/"

.field public static final XUI_USER_RSC_PATH:Ljava/lang/String; = "/data/xuiservice/"

.field private static mHasCiuDevice:Ljava/lang/Boolean;

.field private static sCfcCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/XUIConfig;->sCfcCode:Ljava/lang/Integer;

    .line 133
    sput-object v0, Lcom/xiaopeng/xuiservice/XUIConfig;->mHasCiuDevice:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoBrightness()I
    .locals 1

    .line 351
    const-string v0, "XPU"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x0

    return v0

    .line 353
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasCiu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const/4 v0, 0x1

    return v0

    .line 356
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static avasSayhiDefault()Z
    .locals 1

    .line 360
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_AVAS_SAYHI_DEFAULT:Z

    return v0
.end method

.method public static getAtlType()I
    .locals 1

    .line 246
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_ATL_TYPE:I

    return v0
.end method

.method public static getAutoBrightnessType()I
    .locals 1

    .line 290
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUTO_BRIGHTNESS_TYPE:I

    return v0
.end method

.method public static getAvasSupportType()I
    .locals 1

    .line 266
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_AVAS_SUPPORT_TYPE:I

    return v0
.end method

.method public static getBacklightOvertempProtect()I
    .locals 1

    .line 286
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_BACKLIGHT_OVERTEMP_PROTECT:I

    return v0
.end method

.method public static getBootSoundSupportType()I
    .locals 1

    .line 282
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_BOOT_SOUND_SUPPORT_TYPE:I

    return v0
.end method

.method public static getCfcCode()I
    .locals 5

    .line 326
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIConfig;->sCfcCode:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "cfc":I
    sget-object v1, Lcom/xiaopeng/util/FeatureOption;->FO_CFC_CODE_PROPERTY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "cfcInfo":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 333
    goto :goto_0

    .line 332
    :catch_0
    move-exception v2

    .line 336
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 337
    const/4 v0, 0x1

    .line 339
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/xuiservice/XUIConfig;->sCfcCode:Ljava/lang/Integer;

    .line 340
    const-string v2, "XUIConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCfcCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/xuiservice/XUIConfig;->sCfcCode:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v0    # "cfc":I
    .end local v1    # "cfcInfo":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIConfig;->sCfcCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getEpsType()I
    .locals 1

    .line 322
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_EPS_TYPE:I

    return v0
.end method

.method public static getFeatureType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "featureName"    # Ljava/lang/String;

    .line 230
    invoke-static {p0}, Lcom/xiaopeng/util/FeatureOption;->getFeatureType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIcmType()I
    .locals 1

    .line 262
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_ICM_TYPE:I

    return v0
.end method

.method public static getLluFrontNumType()I
    .locals 1

    .line 254
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_LLU_FRONT_NUM:I

    return v0
.end method

.method public static getLluRearNumType()I
    .locals 1

    .line 258
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_LLU_REAR_NUM:I

    return v0
.end method

.method public static getLluType()I
    .locals 1

    .line 250
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_LLU_TYPE:I

    return v0
.end method

.method public static getProductSeries()I
    .locals 1

    .line 234
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_PRODUCT_SERIES:I

    return v0
.end method

.method public static hasCiu()Z
    .locals 1

    .line 364
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIConfig;->mHasCiuDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasCiuDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/XUIConfig;->mHasCiuDevice:Ljava/lang/Boolean;

    .line 367
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIConfig;->mHasCiuDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static hasCiuDevice()Z
    .locals 5

    .line 379
    const/4 v0, 0x2

    .line 380
    .local v0, "state":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_mcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 381
    .local v1, "mcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 383
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getCiuState()I

    move-result v2

    move v0, v2

    .line 384
    const-string v2, "XUIConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carservice getCiuState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    goto :goto_0

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 389
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 3
    .param p0, "featureName"    # Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "MSMD_MASSG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "scissorsGate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "SECROW_RT_MASSG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "FSEAT_RHYTHM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "refrigerator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "DOLBY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "MAKEUP_MIRROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "MSMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "MSMD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "IPUR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "IPUF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "ATLS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "XPU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "VPM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "SHC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "SFS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "SFM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "SCU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "RLS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "NFC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "MSB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "MRR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "LLU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "IMU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_18
    const-string v0, "CWC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_19
    const-string v0, "AVM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_1a
    const-string v0, "AQS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1b
    const-string v0, "AMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_1c
    const-string v0, "MSMP_MASSG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_1d
    const-string v0, "SECROW_LT_MASSG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_1e
    const-string v0, "XSPORT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_1f
    const-string v0, "MIRROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 226
    invoke-static {p0}, Lcom/xiaopeng/util/FeatureOption;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 223
    :pswitch_0
    invoke-static {}, Landroid/car/XpCarFeatures;->hasRearFoldableScreen()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 221
    :pswitch_1
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMSecRowRtMassageFeature()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 219
    :pswitch_2
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMSecRowLtMassageFeature()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    .line 217
    :pswitch_3
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMPMassageFeature()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1

    .line 215
    :pswitch_4
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMDMassageFeature()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    .line 213
    :pswitch_5
    invoke-static {}, Landroid/car/XpCarFeatures;->hasXSportFeature()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v1, v2

    nop

    :cond_6
    return v1

    .line 211
    :pswitch_6
    invoke-static {}, Landroid/car/XpCarFeatures;->hasDolbyFeature()I

    move-result v0

    if-ne v0, v2, :cond_7

    move v1, v2

    nop

    :cond_7
    return v1

    .line 209
    :pswitch_7
    invoke-static {}, Landroid/car/XpCarFeatures;->hasRefrigeratorFeature()I

    move-result v0

    if-ne v0, v2, :cond_8

    move v1, v2

    nop

    :cond_8
    return v1

    .line 207
    :pswitch_8
    invoke-static {}, Landroid/car/XpCarFeatures;->hasSFSFeature()I

    move-result v0

    if-ne v0, v2, :cond_9

    move v1, v2

    nop

    :cond_9
    return v1

    .line 205
    :pswitch_9
    invoke-static {}, Landroid/car/XpCarFeatures;->hasIPURFeature()I

    move-result v0

    if-ne v0, v2, :cond_a

    move v1, v2

    nop

    :cond_a
    return v1

    .line 203
    :pswitch_a
    invoke-static {}, Landroid/car/XpCarFeatures;->hasIPUFFeature()I

    move-result v0

    if-ne v0, v2, :cond_b

    move v1, v2

    nop

    :cond_b
    return v1

    .line 201
    :pswitch_b
    invoke-static {}, Landroid/car/XpCarFeatures;->hasSHCFeature()I

    move-result v0

    if-ne v0, v2, :cond_c

    move v1, v2

    nop

    :cond_c
    return v1

    .line 199
    :pswitch_c
    invoke-static {}, Landroid/car/XpCarFeatures;->hasDriverWirelessChargeFeature()I

    move-result v0

    if-ne v0, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    return v1

    .line 197
    :pswitch_d
    invoke-static {}, Landroid/car/XpCarFeatures;->hasNFCFeature()I

    move-result v0

    if-ne v0, v2, :cond_e

    move v1, v2

    nop

    :cond_e
    return v1

    .line 195
    :pswitch_e
    invoke-static {}, Landroid/car/XpCarFeatures;->hasSeatRhythmFeature()I

    move-result v0

    if-ne v0, v2, :cond_f

    move v1, v2

    nop

    :cond_f
    return v1

    .line 193
    :pswitch_f
    invoke-static {}, Landroid/car/XpCarFeatures;->hasAMPFeature()I

    move-result v0

    if-ne v0, v2, :cond_10

    move v1, v2

    nop

    :cond_10
    return v1

    .line 191
    :pswitch_10
    invoke-static {}, Landroid/car/XpCarFeatures;->hasRLSFeature()I

    move-result v0

    if-ne v0, v2, :cond_11

    move v1, v2

    nop

    :cond_11
    return v1

    .line 189
    :pswitch_11
    invoke-static {}, Landroid/car/XpCarFeatures;->hasIMUFeature()I

    move-result v0

    if-ne v0, v2, :cond_12

    move v1, v2

    nop

    :cond_12
    return v1

    .line 187
    :pswitch_12
    invoke-static {}, Landroid/car/XpCarFeatures;->hasVPMFeature()I

    move-result v0

    if-ne v0, v2, :cond_13

    move v1, v2

    nop

    :cond_13
    return v1

    .line 185
    :pswitch_13
    invoke-static {}, Landroid/car/XpCarFeatures;->hasXPU()I

    move-result v0

    if-ne v0, v2, :cond_14

    move v1, v2

    nop

    :cond_14
    return v1

    .line 183
    :pswitch_14
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMRRFeature()I

    move-result v0

    if-ne v0, v2, :cond_15

    move v1, v2

    nop

    :cond_15
    return v1

    .line 181
    :pswitch_15
    invoke-static {}, Landroid/car/XpCarFeatures;->hasSCU()I

    move-result v0

    if-ne v0, v2, :cond_16

    move v1, v2

    nop

    :cond_16
    return v1

    .line 179
    :pswitch_16
    invoke-static {}, Landroid/car/XpCarFeatures;->hasAVMFeature()I

    move-result v0

    if-ne v0, v2, :cond_17

    move v1, v2

    nop

    :cond_17
    return v1

    .line 177
    :pswitch_17
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSBFeature()I

    move-result v0

    if-ne v0, v2, :cond_18

    move v1, v2

    nop

    :cond_18
    return v1

    .line 175
    :pswitch_18
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMPMemoryFeature()I

    move-result v0

    if-ne v0, v2, :cond_19

    move v1, v2

    nop

    :cond_19
    return v1

    .line 173
    :pswitch_19
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMDMemoryFeature()I

    move-result v0

    if-ne v0, v2, :cond_1a

    move v1, v2

    nop

    :cond_1a
    return v1

    .line 171
    :pswitch_1a
    invoke-static {}, Landroid/car/XpCarFeatures;->hasScissorGateFeature()I

    move-result v0

    if-ne v0, v2, :cond_1b

    move v1, v2

    nop

    :cond_1b
    return v1

    .line 169
    :pswitch_1b
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMirrorMemoryFeature()I

    move-result v0

    if-ne v0, v2, :cond_1c

    move v1, v2

    nop

    :cond_1c
    return v1

    .line 167
    :pswitch_1c
    invoke-static {}, Landroid/car/XpCarFeatures;->hasAQSFeature()I

    move-result v0

    if-ne v0, v2, :cond_1d

    move v1, v2

    nop

    :cond_1d
    return v1

    .line 165
    :pswitch_1d
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMakeUpMirrorFeature()I

    move-result v0

    if-ne v0, v2, :cond_1e

    move v1, v2

    nop

    :cond_1e
    return v1

    .line 163
    :pswitch_1e
    invoke-static {}, Landroid/car/XpCarFeatures;->hasLLUFeature()I

    move-result v0

    if-ne v0, v2, :cond_1f

    move v1, v2

    nop

    :cond_1f
    return v1

    .line 161
    :pswitch_1f
    invoke-static {}, Landroid/car/XpCarFeatures;->hasATLSFeature()I

    move-result v0

    if-ne v0, v2, :cond_20

    move v1, v2

    nop

    :cond_20
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x786fa041 -> :sswitch_1f
        -0x651e5a04 -> :sswitch_1e
        -0x4418b60e -> :sswitch_1d
        -0x693b623 -> :sswitch_1c
        0xfda4 -> :sswitch_1b
        0xfe23 -> :sswitch_1a
        0xfeb8 -> :sswitch_19
        0x1064f -> :sswitch_18
        0x11bb1 -> :sswitch_17
        0x126d5 -> :sswitch_16
        0x12b4d -> :sswitch_15
        0x12b5c -> :sswitch_14
        0x12d8b -> :sswitch_13
        0x13d59 -> :sswitch_12
        0x14005 -> :sswitch_11
        0x1405a -> :sswitch_10
        0x14060 -> :sswitch_f
        0x1408e -> :sswitch_e
        0x14cd3 -> :sswitch_d
        0x1545d -> :sswitch_c
        0x1ed0fa -> :sswitch_b
        0x2265f8 -> :sswitch_a
        0x226604 -> :sswitch_9
        0x2441bd -> :sswitch_8
        0x2441c9 -> :sswitch_7
        0x2670bb5 -> :sswitch_6
        0x3e34d38 -> :sswitch_5
        0x1dddb160 -> :sswitch_4
        0x2545480a -> :sswitch_3
        0x2b2e572c -> :sswitch_2
        0x39154d82 -> :sswitch_1
        0x7ea182d1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasPassengerBluetooth()Z
    .locals 1

    .line 393
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_PASSENGER_BT_AUDIO_EXIST:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasXpu()Z
    .locals 1

    .line 371
    const-string v0, "XPU"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isA2DPAutoDisconnectEnable()Z
    .locals 1

    .line 274
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_A2DP_AUTODISCONNECT_ENABLED:Z

    return v0
.end method

.method public static isAiLluEnable()Z
    .locals 1

    .line 270
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_AI_LLU_ENABLED:Z

    return v0
.end method

.method public static isAnimationSupported()Z
    .locals 1

    .line 308
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_ANIMA_SUPPORT:Z

    if-eqz v0, :cond_0

    const-string v0, "XSPORT"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAudioStereoEnable()Z
    .locals 1

    .line 294
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_STEREO_ENABLED:Z

    return v0
.end method

.method public static isEcallEnable()Z
    .locals 1

    .line 375
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_NATIVE_E_CALL_ENABLE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_DEVICE_INTERNATIONAL_ENABLED:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFlyGameModeEnabled()Z
    .locals 1

    .line 278
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_FLY_GAME_ENABLED:Z

    return v0
.end method

.method public static isFragranceNewProtocol()Z
    .locals 2

    .line 304
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_FRAGRANCE_PROTOCAL:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isInternationalEnable()Z
    .locals 1

    .line 238
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_DEVICE_INTERNATIONAL_ENABLED:Z

    return v0
.end method

.method public static isMiniProgramEnable()Z
    .locals 1

    .line 242
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_MINIRPOG_ENABLED:Z

    return v0
.end method

.method public static isPhoneMentionSupport()Z
    .locals 1

    .line 300
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SUPPORT_PHONE_MENTION:Z

    return v0
.end method

.method public static isProductSeriesD()Z
    .locals 1

    .line 347
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_PRODUCT_SERIES:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRemoteServiceEnable()Z
    .locals 1

    .line 397
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_REMOTE_SERVICE_ENABLE:Z

    return v0
.end method

.method public static isSeatMassagerSupport()Z
    .locals 1

    .line 312
    const-string v0, "MSMD_MASSG"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MSMP_MASSG"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SECROW_LT_MASSG"

    .line 313
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SECROW_RT_MASSG"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 312
    :goto_1
    return v0
.end method

.method public static isSupportRemoveGearLimit()Z
    .locals 2

    .line 317
    invoke-static {}, Landroid/car/XpCarFeatures;->getCarSaleRegionCode()I

    move-result v0

    .line 318
    .local v0, "regionCode":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isUVCEnabled()Z
    .locals 2

    .line 401
    const-string v0, "persist.uvccamera.preview.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isXuiProcessHelpLaunch()Z
    .locals 1

    .line 297
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_XUI_PROCESS_HELP_LAUNCH:Z

    return v0
.end method
