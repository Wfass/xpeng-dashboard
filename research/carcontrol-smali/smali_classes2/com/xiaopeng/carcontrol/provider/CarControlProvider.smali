.class public Lcom/xiaopeng/carcontrol/provider/CarControlProvider;
.super Landroid/content/ContentProvider;
.source "CarControlProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CarControlProvider"

.field private static final NULL_SETTING_BUNDLE:Landroid/os/Bundle;

.field public static final SETTINGS_TYPE_PRIVATE:I = 0x2

.field public static final SETTINGS_TYPE_QUICK:I = 0x0

.field public static final SETTINGS_TYPE_SYSTEM:I = 0x1


# instance fields
.field private mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

.field private volatile mIsServiceVmInit:Z

.field private final mLock:Ljava/lang/Object;

.field private mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

.field private mSettingsRegistry:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mIsServiceVmInit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mIsServiceVmInit:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    return-object p0
.end method

.method private getPrivateSetting(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "isla_sw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "drv_seat_check"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "cngp_safe_exam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "super_vpa_safe_exam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "wiper_cfg_level"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "psn_seat_welcome"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "new_drive_mode_value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "mem_park_video_watched"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "win_high_spd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "avas_external_sw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "mem_park_safe_exam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "avas_external_volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "car_license_plate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "ngp_safe_exam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "boot_effect_before_sw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "esb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "drive_mode_user"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "set_nra_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "user_define_drive_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "super_lcc_safe_exam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "p_drop_sw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "rear_seat_welcome"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "special_drive_mode_value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v1, "user_define_drive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_18
    const-string/jumbo v1, "unlock_response"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_19
    const-string v1, "esp_sw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1a
    const-string v1, "avh_sw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1b
    const-string v1, "normal_drive_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1c
    const-string v1, "lcc_safe_exam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_0

    :cond_1d
    move v0, v2

    goto :goto_0

    :sswitch_1d
    const-string v1, "lcc_video_watched"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1e
    const-string v1, "apa_safe_exam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mSettingsRegistry:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    invoke-virtual {v1, v2, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->getSettingLocked(ILjava/lang/String;)Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    move-result-object p1

    .line 330
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 301
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getIslaSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 247
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->isDrvSeatEqualMemory()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 298
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCngpSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 287
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperVpaSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 273
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWiperSensitivity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 250
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPsnWelcomeMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 313
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDriveMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 307
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isMemParkVideoWatched()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 259
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isWinHighSpdEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 265
    :pswitch_9
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->isAvasExternalSwEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 285
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 267
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvasOtherVolume()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 279
    :pswitch_c
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCarLicensePlate()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 282
    :pswitch_d
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 270
    :pswitch_e
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getBootEffectBeforeSw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 256
    :pswitch_f
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatEsb()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 239
    :pswitch_10
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isDriveModeChangedByUser()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 325
    :pswitch_11
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNraState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 316
    :pswitch_12
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getUserDefineDriveModeInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 290
    :pswitch_13
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperLccSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 276
    :pswitch_14
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getParkDropdownMenuEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 253
    :pswitch_15
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRearSeatWelcomeMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 319
    :pswitch_16
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSpecialDriveMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 310
    :pswitch_17
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getUserDefineDriveMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 262
    :pswitch_18
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getUnlockResponse()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 242
    :pswitch_19
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getEsp()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 244
    :pswitch_1a
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvh()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 322
    :pswitch_1b
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNormalDriveModeEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 293
    :pswitch_1c
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLccSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 304
    :pswitch_1d
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isLccVideoWatched()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 296
    :pswitch_1e
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getApaSafeExamResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x742a185c -> :sswitch_1e
        -0x6fdbb749 -> :sswitch_1d
        -0x6ec4d122 -> :sswitch_1c
        -0x57bdee70 -> :sswitch_1b
        -0x53ca5cb0 -> :sswitch_1a
        -0x4d1d9dbf -> :sswitch_19
        -0x4bdead24 -> :sswitch_18
        -0x34856206 -> :sswitch_17
        -0x30a50b90 -> :sswitch_16
        -0x2a5aea1d -> :sswitch_15
        -0x22b79f1b -> :sswitch_14
        -0x16adc2e6 -> :sswitch_13
        -0x1658d42d -> :sswitch_12
        -0x79a92ae -> :sswitch_11
        -0x4eb578e -> :sswitch_10
        0x18974 -> :sswitch_f
        0x2006ba3 -> :sswitch_e
        0x1ca4e529 -> :sswitch_d
        0x2264dc6d -> :sswitch_c
        0x24fcbcf6 -> :sswitch_b
        0x25da2726 -> :sswitch_a
        0x337f3240 -> :sswitch_9
        0x3de7268d -> :sswitch_8
        0x507ddcff -> :sswitch_7
        0x62229669 -> :sswitch_6
        0x653b141c -> :sswitch_5
        0x6b8665b5 -> :sswitch_4
        0x74ac7e75 -> :sswitch_3
        0x7569dda6 -> :sswitch_2
        0x761ef545 -> :sswitch_1
        0x7ccb1284 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private getQuickSetting(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "mirror_fold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "open_rear_trunk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mSettingsRegistry:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    invoke-virtual {v0, v2, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->getSettingLocked(ILjava/lang/String;)Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    move-result-object p1

    .line 227
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 228
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const-string v1, "CarControlProvider"

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " is not readable"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string/jumbo v0, "value"

    .line 358
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getSystemSetting(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "drive_mode_set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "hvac_psn_sync_set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "hvac_drv_temp_set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "central_lock_set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "hvac_power_set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "hvac_drv_sync_set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "hvac_front_defrost_set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "hvac_back_defrost_set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_0

    :sswitch_8
    const-string v2, "hvac_psn_temp_set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move v1, v4

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mSettingsRegistry:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    invoke-virtual {v0, v3, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->getSettingLocked(ILjava/lang/String;)Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    move-result-object p1

    .line 207
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->packageValueForCallResult(Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 208
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_0
    const-string v1, "CarControlProvider"

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " is not readable"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6b9c4d66 -> :sswitch_8
        -0x575717a3 -> :sswitch_7
        -0x28f990df -> :sswitch_6
        0x8fe3a4 -> :sswitch_5
        0xae61659 -> :sswitch_4
        0x2d9cbad8 -> :sswitch_3
        0x4576c85d -> :sswitch_2
        0x4f7ccde1 -> :sswitch_1
        0x7bb64edb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private insertPrivateSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->validateSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mSettingsRegistry:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->updatePrivateControlLocked(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method private insertQuickSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->validateSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mSettingsRegistry:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->updateQuickControlLocked(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method private insertSystemSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->validateSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mSettingsRegistry:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->updateSystemControlLocked(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method private packageValueForCallResult(Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setting"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->isNull()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v1, "value"

    .line 167
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 163
    :cond_2
    :goto_1
    sget-object p1, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    return-object p1
.end method

.method private packageValueForCallResult(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 175
    sget-object p1, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    return-object p1

    .line 178
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "value"

    .line 179
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private validateSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " for setting: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "name",
            "extras"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "GET_private"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "GET_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "GET_quick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "PUT_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "PUT_quick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "PUT_private"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call() with invalid method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarControlProvider"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->getPrivateSetting(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 127
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->getSystemSetting(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 130
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->getQuickSetting(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 136
    :pswitch_3
    invoke-static {p3}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 142
    :pswitch_4
    invoke-static {p3}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->insertQuickSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 148
    :pswitch_5
    invoke-static {p3}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->insertPrivateSetting(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3be05bcd -> :sswitch_5
        -0x28c26f63 -> :sswitch_4
        0x141b5d7f -> :sswitch_3
        0x22c2dba4 -> :sswitch_2
        0x393f7358 -> :sswitch_1
        0x437e497a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "selection",
            "selectionArgs"
        }
    .end annotation

    .line 114
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external delete"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "values"
        }
    .end annotation

    .line 109
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external insert"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic lambda$onCreate$0$CarControlProvider()V
    .locals 4

    .line 80
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 82
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "CarControlProvider"

    const-string v3, "Wait car service connect occurs error: "

    .line 84
    invoke-static {v2, v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 87
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mIsServiceVmInit:Z

    :cond_0
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    new-instance v1, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;-><init>(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mSettingsRegistry:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->initSharedPreferences(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 79
    new-instance v0, Lcom/xiaopeng/carcontrol/provider/-$$Lambda$CarControlProvider$BKYrVBjeFmxi1ai_k3EuLGxb3fM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/provider/-$$Lambda$CarControlProvider$BKYrVBjeFmxi1ai_k3EuLGxb3fM;-><init>(Lcom/xiaopeng/carcontrol/provider/CarControlProvider;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 75
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "projection",
            "selection",
            "selectionArgs",
            "sortOrder"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "values",
            "selection",
            "selectionArgs"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
