.class public final Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# static fields
.field public static final PREF_FILE_NAME:Ljava/lang/String; = "CarControl"

.field private static sSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    const-class v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    const-string v2, "CarControl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/carcontrol/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    .line 34
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDriveSubItem()Ljava/lang/String;
    .locals 3

    .line 3102
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->getAllDefaultDriveSubItemString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_drive_sub_item"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllDriveSubItemWithOutDefault()Ljava/lang/String;
    .locals 3

    .line 3106
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_drive_sub_item"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAsCampingModeStatus()Z
    .locals 3

    .line 2645
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_as_camping_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAsHeight()I
    .locals 3

    .line 2627
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_as_height_lvl"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAsLocationControlSw()Z
    .locals 3

    .line 2669
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_as_location_control_sw_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAsLocationStatus()Z
    .locals 3

    .line 2657
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_as_location_sw_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getAtlDualColor()Ljava/lang/String;
    .locals 3

    .line 1899
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_atl_dual_color"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAtlEffectMode()Ljava/lang/String;
    .locals 3

    .line 1863
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_atl_effect_mode"

    const-string/jumbo v2, "stable_effect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAtlManualBrightness()I
    .locals 3

    .line 1851
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_atl_manual_bright"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getAtlRgbDualColor()Ljava/lang/String;
    .locals 3

    .line 1921
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_atl_rgb_dual_color"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAtlRgbSingleColor()Ljava/lang/String;
    .locals 3

    .line 1910
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_atl_rgb_single_color"

    const-string/jumbo v2, "{\"0\":749311}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAtlSingleColor()I
    .locals 3

    .line 1887
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_atl_single_color"

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getAutoDoorHandle()Z
    .locals 3

    .line 178
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->AUTO_DOOR_HANDLE:Z

    const-string v2, "pref_auto_door_handle"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAutoEasyLoadStatus()Z
    .locals 3

    .line 2584
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "auto_easy_load_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getAutoWindowLockSw()Z
    .locals 3

    .line 1735
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_lock_close_win_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getAvasExternalVolume()I
    .locals 3

    .line 1973
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_external_volume_volume"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getAvasFriendEffect()I
    .locals 3

    .line 891
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_friend_effect"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getAvasLowSpdEffect()I
    .locals 3

    .line 849
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_low_spd_effect"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getAvasLowSpdVolume()I
    .locals 3

    .line 870
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_low_spd_volume"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAwdSetting()I
    .locals 3

    .line 1128
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_awd_setting_mode_int"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBodyFaultIndicationSw()Z
    .locals 3

    .line 3004
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_body_fault"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getBootEffect()I
    .locals 3

    .line 912
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_boot_effect"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getBootEffectOld()I
    .locals 3

    .line 933
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_boot_effect_old"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getCarLicensePlate()Ljava/lang/String;
    .locals 3

    .line 2137
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_car_license_plate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCarpetLightWelcomeMode()Z
    .locals 3

    .line 466
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_carpet_light_welcome_mode_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCdcMode()I
    .locals 3

    .line 990
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cdc_int"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getCiuCameraSw()Z
    .locals 3

    .line 1989
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ciu_camera"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCiuDistractSw()Z
    .locals 3

    .line 2022
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ciu_distract"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCiuFaceSw()Z
    .locals 3

    .line 2000
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ciu_face"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCiuFatigueSw()Z
    .locals 3

    .line 2011
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ciu_fatigue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCiuWiperIntervalGear()I
    .locals 3

    .line 614
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ciu_wiper_interval_gear_int"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getCmsAutoBrightSw()Z
    .locals 3

    .line 2760
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_auto_bright_sw"

    const/4 v2, 0x1

    .line 2761
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCmsBright()I
    .locals 3

    .line 2771
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_brightness"

    const/16 v2, 0x32

    .line 2772
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getCmsHighSpdSw()Z
    .locals 3

    .line 2738
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_high_spd_sw"

    const/4 v2, 0x1

    .line 2739
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCmsLowSpdSw()Z
    .locals 3

    .line 2749
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_low_spd_sw"

    const/4 v2, 0x1

    .line 2750
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCmsObjectRecognizeSw()Z
    .locals 3

    .line 2802
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_object_recognize"

    const/4 v2, 0x1

    .line 2803
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCmsPos()Ljava/lang/String;
    .locals 3

    .line 2782
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_pos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCmsReverseSw()Z
    .locals 3

    .line 2716
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_reverse_sw"

    const/4 v2, 0x1

    .line 2717
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCmsTurnSw()Z
    .locals 3

    .line 2727
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_turn_sw"

    const/4 v2, 0x1

    .line 2728
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCmsViewAngle()I
    .locals 3

    .line 2792
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_view_angle"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getCmsViewRecoverySw()Z
    .locals 3

    .line 2813
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cms_view_recovery"

    const/4 v2, 0x1

    .line 2814
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCurrentSelectedPsnHabit()I
    .locals 3

    .line 1246
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "current_selected_psn_habbit_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getCurrentSelectedRLHabit()I
    .locals 3

    .line 1250
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "current_selected_rl_habbit_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getCurrentSelectedRRHabit()I
    .locals 3

    .line 1254
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "current_selected_rr_habbit_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getCwcFRSw()Z
    .locals 3

    .line 678
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cwc_fr_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCwcRLSw()Z
    .locals 3

    .line 700
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cwc_rl_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCwcRRSw()Z
    .locals 3

    .line 722
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cwc_rr_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCwcSw()Z
    .locals 3

    .line 656
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_cwc_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getDomeLight()I
    .locals 3

    .line 490
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_dome"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getDomeLightBright()I
    .locals 3

    .line 500
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    sget v1, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->DOME_BRIGHT:I

    const-string v2, "pref_dome_bright"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getDoorBossSw()Z
    .locals 3

    .line 1956
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_door_boss_sw"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getDoorKey()I
    .locals 3

    .line 1944
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_door_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getDriveAutoLock()Z
    .locals 3

    .line 198
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_drive_auto_lock_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDriveMode()I
    .locals 3

    .line 1105
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_drive_mode_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDriverSeatAntiFatigueSw()Z
    .locals 3

    .line 3092
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_msmd_seat_anti_fatigue_st"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDrivingRiskWarningSw()Z
    .locals 3

    .line 3088
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "pref_driving_risk_warning"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getDrvLumbControlSw()Z
    .locals 3

    .line 2868
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_drv_lumb_sw"

    const/4 v2, 0x0

    .line 2869
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getDrvSeatData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1191
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDrvSeatHeatLevel()I
    .locals 3

    .line 2104
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_drv_seat_heat_level_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getDrvSeatMemoryIndex()I
    .locals 3

    .line 1206
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "drv_sear_memory_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getDrvSeatVentLevel()I
    .locals 3

    .line 2115
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_drv_seat_vent_level_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEasyLoadingStatus()Z
    .locals 3

    .line 2572
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "easy_loading_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getEbwSw()Z
    .locals 3

    .line 814
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->EMERGENCY_BREAK_WARNING:Z

    const-string v2, "pref_ebw_bool"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnergyRecycleGrade()I
    .locals 3

    .line 1083
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    .line 1085
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->getDefaultEnergyRecycleGrade()I

    move-result v1

    const-string v2, "pref_energy_recycle_int"

    .line 1083
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getEspBpfMode()I
    .locals 3

    .line 2857
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_esp_bpf"

    const/4 v2, 0x1

    .line 2858
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEspCstSw()Z
    .locals 3

    .line 2846
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_esp_cst_sw"

    const/4 v2, 0x1

    .line 2847
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getEspSw()Z
    .locals 3

    .line 1170
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_esp_mode_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFirstEnterXpowerFlag()Z
    .locals 3

    .line 1149
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_first_enter_xpower_flag_boolean"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getForestDownloadId()J
    .locals 4

    .line 2493
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_forest_id_med"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGreenLightRemindStateSw()Z
    .locals 3

    .line 2974
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_green_light_remind"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHeadLampState()I
    .locals 3

    .line 89
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_head_lamp_int"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getHighSpdCloseWinSw()Z
    .locals 3

    .line 1716
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_auto_close_window_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIcmBrightness()I
    .locals 3

    .line 2220
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_icm_brightness_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIcmMeditation()Z
    .locals 3

    .line 2230
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_icm_meditation_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIgOnAutoCheckSwState()Z
    .locals 3

    .line 2954
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_auto_check_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getImsAutoVisionSw()I
    .locals 3

    .line 2824
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ims_auto_vision_sw"

    const/4 v2, 0x1

    .line 2825
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getImsMode()I
    .locals 3

    .line 2835
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ims_mode"

    const/4 v2, 0x1

    .line 2836
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIntelligentOverspeedRemindStateSw()Z
    .locals 3

    .line 2984
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_intelligent_overspeed_remind"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getIslaConfirmMode()Z
    .locals 3

    .line 1045
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_isla_confirm_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getIslaSpdRange()I
    .locals 3

    .line 1034
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_isla_spd_range"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getIslaSw()I
    .locals 3

    .line 1001
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_isla"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLLuDanceCurrentSelectRscId()Ljava/lang/String;
    .locals 3

    .line 2207
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "llu_dance_current_select_rsc_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLLuDanceLastPlayRscId()Ljava/lang/String;
    .locals 3

    .line 2187
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "llu_dance_last_play_rsc_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLampHeightLevel()I
    .locals 3

    .line 101
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_lamp_height_level_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastDriveMode()I
    .locals 3

    .line 3122
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_last_drive_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastReserveTime()J
    .locals 4

    .line 2964
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_reserve_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLeaveAutoLock()Z
    .locals 3

    .line 258
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_leave_auto_lock_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getLeftChildLockSw()Z
    .locals 3

    .line 344
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_left_child_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getLeftDoorHotKeySw()Z
    .locals 3

    .line 384
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_left_door_hot_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLeftSlideDoorMode()I
    .locals 3

    .line 2293
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_left_slider_door_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getLightMeHomeTime()I
    .locals 3

    .line 158
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_light_me_home_time_int"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLluAutoVolume()Z
    .locals 3

    .line 61
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_confirm_dialog_auto_volume"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLluAutoWindow()Z
    .locals 3

    .line 73
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_confirm_dialog_auto_window"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getLluEffectLockingMode()I
    .locals 3

    .line 1813
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_effect_locking_mode"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLluOrderPlay()Z
    .locals 3

    .line 49
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_confirm_dialog_order_play"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getLockResponseNew()I
    .locals 3

    .line 302
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_lock_response_new_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getMapUserExperiencePlanState()Z
    .locals 3

    .line 1023
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_map_user_privacy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getMassageMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    .line 1363
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_RR_MASSAGE_MODE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1361
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_RL_MASSAGE_MODE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1359
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_PSN_MASSAGE_MODE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1357
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_DRV_MASSAGE_MODE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMedDownloadId()J
    .locals 4

    .line 2490
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_meditation_id_med"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMediDayNightMode()I
    .locals 3

    .line 2240
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_meditation_day_night_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMeditationAtlSw()Z
    .locals 3

    .line 2534
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_meditation_atl_sw"

    const/4 v2, 0x1

    .line 2535
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMeditationDownloadResult(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 2472
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getMeditationLastPlayIndex()I
    .locals 3

    .line 2468
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_meditation_last_play_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMeterMenuMediaSource()Z
    .locals 3

    .line 543
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    .line 544
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->getDefaultMenuMediaSourceValue()Z

    move-result v1

    const-string v2, "pref_mm_media_src_bool"

    .line 543
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMeterMenuScreenLight()Z
    .locals 3

    .line 554
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_mm_screen_brightness_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMeterMenuTemperature()Z
    .locals 3

    .line 510
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_mm_temp_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMeterMenuWindMode()Z
    .locals 3

    .line 532
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_mm_wind_mode_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMeterMenuWindPower()Z
    .locals 3

    .line 521
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_mm_wind_power_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getMicrophoneMute()Z
    .locals 3

    .line 757
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_microphone_mute_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getMirrorAutoDown()Z
    .locals 3

    .line 1617
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_mirror_down_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getMirrorAutoFoldEnable()Z
    .locals 3

    .line 1584
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_mirror_auto_fold"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getMirrorReverseMode()I
    .locals 3

    .line 1572
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_mirror_reverse"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMomentDownloadId()J
    .locals 4

    .line 2486
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_meditation_id_moment"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getNGearWarningSwitch()Z
    .locals 3

    .line 2055
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_n_gear_warning_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getNearAutoUnlock()Z
    .locals 3

    .line 238
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_near_auto_unlock_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getNraState()I
    .locals 3

    .line 1073
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_nra"

    const/4 v2, 0x2

    .line 1074
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getNraSw()Z
    .locals 3

    .line 1062
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_nra_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getParkAutoUnlock()Z
    .locals 3

    .line 218
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_parking_auto_unlock_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getParkLampB()Z
    .locals 3

    .line 123
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->PARK_LAMP_B:Z

    const-string v2, "pref_park_lamp_b_bool"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getPhoneRemindSw()Z
    .locals 3

    .line 740
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_phone_reminder_sw_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getPollingLightWelcomeMode()Z
    .locals 3

    .line 478
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_polling_light_welcome_mode_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getPsnLumbControlSw()Z
    .locals 3

    .line 2879
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_psn_lumb_sw"

    const/4 v2, 0x0

    .line 2880
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getPsnSeatData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1283
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getPsnSeatHeatLevel()I
    .locals 3

    .line 2126
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_psn_seat_heat_level_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getPsnSeatMemoryIndex(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seleceId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v0

    .line 1216
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "psn_seat_memory_index2"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1214
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "psn_seat_memory_index1"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1212
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "psn_seat_memory_index0"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static getPsnSeatName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    .line 1337
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_NAME_PSN_SELECT_THREE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1335
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_NAME_PSN_SELECT_TWO"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1333
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_NAME_PSN_SELECT_ONE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getPsnSelectSeatData(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    .line 1301
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_POSITION_THREE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1299
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_POSITION_TWO"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1297
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_POSITION_ONE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRLSeatData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1287
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRLSeatHeatLevel()I
    .locals 3

    .line 2267
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_rl_seat_heat_level_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getRLSeatName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    .line 1349
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_NAME_RL_SELECT_THREE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1347
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_NAME_RL_SELECT_TWO"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1345
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_NAME_RL_SELECT_ONE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRLSelectSeatData(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    .line 1313
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_RL_POSITION_THREE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1311
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_RL_POSITION_TWO"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1309
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_RL_POSITION_ONE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRRSeatData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1291
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRRSeatHeatLevel()I
    .locals 3

    .line 2256
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_rr_seat_heat_level_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getRRSeatName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    .line 1425
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_NAME_RR_SELECT_THREE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1423
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_NAME_RR_SELECT_TWO"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1421
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_NAME_RR_SELECT_ONE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRRSelectSeatData(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    .line 1325
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_RR_POSITION_THREE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1323
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_RR_POSITION_TWO"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1321
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_RR_POSITION_ONE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRearLogoLightSw()Z
    .locals 3

    .line 2914
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_rear_car_light_sw"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getRearMirrorData()Ljava/lang/String;
    .locals 3

    .line 1601
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_mirror_pos_string"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRightChildLockSw()Z
    .locals 3

    .line 364
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_right_child_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getRightDoorHotKeySw()Z
    .locals 3

    .line 405
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_right_door_hot_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getRightSlideDoorMode()I
    .locals 3

    .line 2304
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_right_slider_door_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getSdcBrakeCloseCfg()I
    .locals 3

    .line 2705
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_sdc_brake_close"

    const/4 v2, 0x0

    .line 2706
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getSdcKeyCfg()I
    .locals 3

    .line 2069
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_sdc_key_cfg"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSdcMaxAutoDoorOpeningAngle()I
    .locals 3

    .line 2282
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_sdc_max_auto_door_opening_angle"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getSdcWinAutoDown()Z
    .locals 3

    .line 2088
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_sdc_auto_win_down"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSeaDownloadId()J
    .locals 4

    .line 2496
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_sea_id_med"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSecRowLeftSeatBeltWarning()Z
    .locals 3

    .line 3014
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_child_belt_sec_left_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSecRowMidSeatBeltWarning()Z
    .locals 3

    .line 3026
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_child_belt_sec_mid_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSecRowRightSeatBeltWarning()Z
    .locals 3

    .line 3038
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_child_belt_sec_right_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSpaceCapsuleSleepMusic()Ljava/lang/String;
    .locals 3

    .line 2434
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_space_capsule_sleep_music"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpecialDriveMode()I
    .locals 3

    .line 2681
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_special_drive_mode_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSpeedLimit()Z
    .locals 3

    .line 565
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_speed_limit_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSpeedLimitValue()I
    .locals 3

    .line 576
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_speed_limit_int"

    const/16 v2, 0x50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStartRemindStateSw()Z
    .locals 3

    .line 2994
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "pref_start_remind"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getSteerHeatLevel()I
    .locals 3

    .line 2278
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_steer_heat_level_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSteerPos()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2539
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getSteerPos(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSteerPos(Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enalbeDefaultValue"
        }
    .end annotation

    .line 2543
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->STEER_POS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "pref_steer_pos_string"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSteeringEps()I
    .locals 3

    .line 974
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_wheel_eps_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTrailerHitchStatus()Z
    .locals 3

    .line 2560
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ttm_status_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTrdRowLeftSeatBeltWarning()Z
    .locals 3

    .line 3051
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_child_belt_trd_left_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTrdRowMidSeatBeltWarning()Z
    .locals 3

    .line 3064
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_child_belt_trd_mid_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTrdRowRightSeatBeltWarning()Z
    .locals 3

    .line 3076
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_child_belt_trd_right_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTrunkFullOpenPos()I
    .locals 3

    .line 2602
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_trunk_open_pos_int"

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getUnLockResponseNew()I
    .locals 3

    .line 324
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_unlock_response_new_int"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getUnlockResponse()I
    .locals 3

    .line 280
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    sget v1, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->UNLOCK_RESPONSE:I

    const-string v2, "pref_unlock_response_int"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserDefineDriveMode()I
    .locals 3

    .line 2364
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_user_define_drive_mode_int"

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserDefineDriveModeInfo()Ljava/lang/String;
    .locals 3

    .line 2353
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_user_define_drive_mode_info_str"

    const-string v2, "3_2_1_1_0_1_0_1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDefineDriveModeInfo(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2341
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const/16 v1, 0xb

    if-le p0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_user_define_drive_mode_info_str_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pref_user_define_drive_mode_info_str"

    :goto_0
    const-string v1, "3_2_1_1_0_1_0_1"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVenusDownloadId()J
    .locals 4

    .line 2482
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_meditation_id_venus"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getWaistReliefMemoryMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1398
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_PSN_WAIST_MODE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1396
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CHAIR_DRV_WAIST_MODE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getWheelKeyProtectSw()Z
    .locals 3

    .line 2044
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_wheel_key_protect"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getWheelXKey()I
    .locals 3

    .line 1932
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_wheel_x_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getWindowLockState()Z
    .locals 3

    .line 1751
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_win_lock_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getWiperIntervalGear()I
    .locals 3

    .line 592
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_wiper_interval_gear_int"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getXpedal()Z
    .locals 3

    .line 2147
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_xpedal_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getXpilotUserExperiencePlanState()Z
    .locals 3

    .line 1012
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_xpilot_user_privacy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasConfig(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized initSharedPreferences(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    const-string v1, "CarControl"

    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isAntiSicknessEnabled()Z
    .locals 3

    .line 2157
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_anti_sickness_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAsCustomModeEnable()Z
    .locals 3

    .line 2614
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_as_custom_enable_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isAsWelcomeModeEnabled()Z
    .locals 3

    .line 2386
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_as_welcome_mode_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isAtlAutoBrightness()Z
    .locals 3

    .line 1839
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_atl_auto_bright"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isAtlDualColorSwEnabled()Z
    .locals 3

    .line 1875
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_atl_dual_color_sw"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isAtlSwEnabled()Z
    .locals 3

    .line 1823
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_atl_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoDriveModeEnabled()Z
    .locals 3

    .line 1631
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_auto_drive_mode_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoLampHeight()Z
    .locals 3

    .line 112
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_auto_lamp_height_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isAvasLowSpdEnabled()Z
    .locals 3

    .line 828
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_low_spd_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAvhEnabled()Z
    .locals 3

    .line 952
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_avh_auto_parking_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCarControlMoveBack()Z
    .locals 3

    .line 2167
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_carcontrol_move_back"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method static isCiuRainSwEnabled()Z
    .locals 3

    .line 634
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ciu_rain_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnterSpaceCapsuleFromButton()Z
    .locals 3

    .line 2423
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_enter_capsule_from_button_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isEsbEnabled()Z
    .locals 3

    .line 777
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_electric_belt_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFirstExitSpaceCapsuleMode()Z
    .locals 3

    .line 2409
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_first_exit_capsule_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFirstOpenCngpSw()Z
    .locals 3

    .line 2884
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_first_open_cngp_sw_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFirstOpenXngpSw()Z
    .locals 3

    .line 2896
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_first_open_xngp_sw_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFirstStartSpaceCapsuleMode()Z
    .locals 3

    .line 2398
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_first_start_capsule_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHvacBlowModeAuto()Z
    .locals 3

    .line 1680
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_hvac_blow_mode_auto"

    const/4 v2, 0x0

    .line 1681
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isHvacSelfDryEnabled()Z
    .locals 3

    .line 1652
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_hvac_self_dry_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLCCVideoWatched()Z
    .locals 3

    .line 2315
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_lcc_video_watched_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isLightMeHomeEnabled()Z
    .locals 3

    .line 138
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_light_me_home_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isLluChargeSwEnabled()Z
    .locals 3

    .line 1796
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_charge_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isLluLockSwEnabled()Z
    .locals 3

    .line 1785
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_lock_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isLluSwEnabled()Z
    .locals 3

    .line 1763
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isLluUnlockSwEnabled()Z
    .locals 3

    .line 1774
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_unlock_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMemParkVideoWatched()Z
    .locals 3

    .line 2324
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_mem_park_video_watched_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNewDriveXPedalModeEnabled()Z
    .locals 3

    .line 2375
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_new_drive_xpedal_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isNfcKeyEnabled()Z
    .locals 3

    .line 2444
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_nfc_key_enable_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNormalDriveModeEnable()Z
    .locals 3

    .line 2687
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_normal_special_drive_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isPsnSrsEnable()Z
    .locals 3

    .line 2456
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_psn_srs_enable_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isPsnWelcomeModeEnabled()Z
    .locals 3

    .line 442
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_psn_welcome_mode_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isRearSeatWelcomeModeEnabled()Z
    .locals 3

    .line 454
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_rear_seat_welcome_mode_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRsbWarningEnabled()Z
    .locals 3

    .line 797
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_rear_belt_warning_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSpaceCapsuleSleepBgmOpen()Z
    .locals 3

    .line 2944
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "space.capsule.sleepBgmOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSpaceCapsuleUGEnterShowCheckBoxSelected()Z
    .locals 3

    .line 2924
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "space.capsule.showUGNextTimeEnter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSpaceCapsuleUGExitShowCheckBoxSelected()Z
    .locals 3

    .line 2934
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "space.capsule.showUGNextTimeExit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTrunkSensorEnable()Z
    .locals 3

    .line 2590
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_trunk_sensor_enable_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isWelcomeModeEnabled()Z
    .locals 3

    .line 425
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_welcome_mode_bool"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isWindowSyncEnabled()Z
    .locals 3

    .line 1702
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_window_sync_bool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static saveCurrentSelectPsnHabit(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1228
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_selected_psn_habbit_id"

    .line 1229
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1230
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static saveCurrentSelectRLHabit(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1234
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_selected_rl_habbit_id"

    .line 1235
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1236
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static saveCurrentSelectRRHabit(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation

    .line 1240
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_selected_rr_habbit_id"

    .line 1241
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1242
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static saveDrvSeatData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "seatData"
        }
    .end annotation

    .line 1200
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1201
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1202
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static savePsnSeatData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "seatData"
        }
    .end annotation

    .line 1436
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1437
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1438
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static savePsnSeatName(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "seatName"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1524
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_NAME_PSN_SELECT_THREE"

    .line 1525
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1526
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1519
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_NAME_PSN_SELECT_TWO"

    .line 1520
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1521
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1514
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_NAME_PSN_SELECT_ONE"

    .line 1515
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1516
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method static savePsnSelectSeatData(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "seatData"
        }
    .end annotation

    .line 1443
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CHAIR_POSITION_PSN"

    .line 1444
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1458
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_POSITION_THREE"

    .line 1459
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1460
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1453
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_POSITION_TWO"

    .line 1454
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1455
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1448
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_POSITION_ONE"

    .line 1449
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1450
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method static saveRLSeatName(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "seatName"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1544
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_NAME_RL_SELECT_THREE"

    .line 1545
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1546
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1539
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_NAME_RL_SELECT_TWO"

    .line 1540
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1541
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1534
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_NAME_RL_SELECT_ONE"

    .line 1535
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1536
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method static saveRLSelectSeatData(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "seatData"
        }
    .end annotation

    .line 1466
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CHAIR_POSITION_RL"

    .line 1467
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1468
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1481
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_RL_POSITION_THREE"

    .line 1482
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1483
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1476
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_RL_POSITION_TWO"

    .line 1477
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1478
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1471
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_RL_POSITION_ONE"

    .line 1472
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1473
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method static saveRRSeatName(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "seatName"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1564
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_NAME_RR_SELECT_THREE"

    .line 1565
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1566
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1559
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_NAME_RR_SELECT_TWO"

    .line 1560
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1561
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1554
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_NAME_RR_SELECT_ONE"

    .line 1555
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1556
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method static saveRRSelectSeatData(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "seatData"
        }
    .end annotation

    .line 1489
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CHAIR_POSITION_RR"

    .line 1490
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1504
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_RR_POSITION_THREE"

    .line 1505
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1506
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1499
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_RR_POSITION_TWO"

    .line 1500
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1501
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1494
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_RR_POSITION_ONE"

    .line 1495
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1496
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public static setAllDriveSubItem(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subItem"
        }
    .end annotation

    .line 3110
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_drive_sub_item"

    .line 3111
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3112
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAntiSickness(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2161
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_anti_sickness_bool"

    .line 2162
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2163
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAsCampingModeStatus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2639
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_as_camping_bool"

    .line 2640
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2641
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAsCustomModeEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2620
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_as_custom_enable_bool"

    .line 2621
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2622
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAsHeight(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 2633
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_as_height_lvl"

    .line 2634
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2635
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAsLocationControlSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2663
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_as_location_control_sw_bool"

    .line 2664
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2665
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAsLocationStatus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2651
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_as_location_sw_bool"

    .line 2652
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2653
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAsWelcomeMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2380
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_as_welcome_mode_bool"

    .line 2381
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2382
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAtlAutoBrightness(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1845
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_atl_auto_bright"

    .line 1846
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1847
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAtlDualColor(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dualColorStr"
        }
    .end annotation

    .line 1904
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_atl_dual_color"

    .line 1905
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1906
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAtlDualColorSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1881
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_atl_dual_color_sw"

    .line 1882
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1883
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAtlEffectMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectMode"
        }
    .end annotation

    .line 1869
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_atl_effect_mode"

    .line 1870
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1871
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAtlManualBrightness(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 1857
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_atl_manual_bright"

    .line 1858
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1859
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAtlRgbDualColor(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dualRgbColorStr"
        }
    .end annotation

    .line 1926
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_atl_rgb_dual_color"

    .line 1927
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1928
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAtlRgbSingleColor(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleRgbColorStr"
        }
    .end annotation

    .line 1915
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_atl_rgb_single_color"

    .line 1916
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1917
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAtlSingleColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorId"
        }
    .end annotation

    .line 1893
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_atl_single_color"

    .line 1894
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1895
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAtlSwEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 1833
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_atl_sw"

    .line 1834
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1835
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAutoDoorHandle(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_auto_door_handle"

    .line 190
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 191
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAutoDriveModeEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1641
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_auto_drive_mode_bool"

    .line 1642
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1643
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAutoEasyLoadStatus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2578
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_easy_load_bool"

    .line 2579
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2580
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAutoLampHeight(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_auto_lamp_height_bool"

    .line 118
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 119
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAutoWindowLockSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1745
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_lock_close_win_bool"

    .line 1746
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1747
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAvasExternalVolume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1983
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_external_volume_volume"

    .line 1984
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1985
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAvasFriendEffect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 901
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_friend_effect"

    .line 902
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 903
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAvasLowSpdEffect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 859
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_low_spd_effect"

    .line 860
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 861
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAvasLowSpdEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 838
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_low_spd_sw"

    .line 839
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 840
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAvasLowSpdVolume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 880
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_low_spd_volume"

    .line 881
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 882
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAvhEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 963
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_avh_auto_parking_bool"

    .line 964
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 965
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAwdSetting(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1138
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_awd_setting_mode_int"

    .line 1139
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1140
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setBodyFaultIndicationSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2998
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_body_fault"

    .line 2999
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3000
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setBootEffect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 922
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_boot_effect"

    .line 923
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 924
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setBootEffectOld(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 943
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_boot_effect_old"

    .line 944
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 945
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCarControlMoveBack(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2177
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_carcontrol_move_back"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static setCarLicensePlate(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "licensePlate"
        }
    .end annotation

    .line 2141
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_car_license_plate"

    .line 2142
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2143
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCarpetLightWelcomeMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 472
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_carpet_light_welcome_mode_bool"

    .line 473
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 474
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCdcMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdc"
        }
    .end annotation

    .line 995
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cdc_int"

    .line 996
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 997
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCiuCameraSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1994
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ciu_camera"

    .line 1995
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1996
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCiuDistractSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2027
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ciu_distract"

    .line 2028
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2029
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCiuFaceSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2005
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ciu_face"

    .line 2006
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2007
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCiuFatigueSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2016
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ciu_fatigue"

    .line 2017
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2018
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCiuRainSwEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 645
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ciu_rain_bool"

    .line 646
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 647
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCiuWiperIntervalGear(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation

    .line 625
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ciu_wiper_interval_gear_int"

    .line 626
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 627
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsAutoBrightSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2754
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_auto_bright_sw"

    .line 2755
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2756
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsBright(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 2765
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_brightness"

    .line 2766
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2767
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsHighSpdSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2732
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_high_spd_sw"

    .line 2733
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2734
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsLowSpdSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2743
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_low_spd_sw"

    .line 2744
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2745
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsObjectRecognizeSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2796
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_object_recognize"

    .line 2797
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2798
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsPos(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 2776
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_pos"

    .line 2777
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2778
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsReverseSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2710
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_reverse_sw"

    .line 2711
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2712
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsTurnSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2721
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_turn_sw"

    .line 2722
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2723
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsViewAngle(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAngle"
        }
    .end annotation

    .line 2786
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_view_angle"

    .line 2787
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2788
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCmsViewRecoverySw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2807
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cms_view_recovery"

    .line 2808
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2809
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCwcFRSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 689
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cwc_fr_bool"

    .line 690
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 691
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCwcRLSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 711
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cwc_rl_bool"

    .line 712
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 713
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCwcRRSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 733
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cwc_rr_bool"

    .line 734
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 735
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setCwcSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 667
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cwc_bool"

    .line 668
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 669
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDomeLight(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_dome"

    .line 495
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 496
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDomeLightBright(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_dome_bright"

    .line 505
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 506
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setDoorBossSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1962
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_door_boss_sw"

    .line 1963
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1964
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setDoorKey(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1950
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_door_key"

    .line 1951
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1952
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setDriveAutoLock(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_drive_auto_lock_bool"

    .line 210
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 211
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDriveMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1115
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_drive_mode_int"

    .line 1116
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1117
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDriverSeatAntiFatigueSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 3096
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_msmd_seat_anti_fatigue_st"

    .line 3097
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3098
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDrivingRiskWarningSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 3082
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_driving_risk_warning"

    .line 3083
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3084
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDrvLumbControlSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2862
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_drv_lumb_sw"

    .line 2863
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2864
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setDrvSeatHeatLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2109
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_drv_seat_heat_level_int"

    .line 2110
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2111
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setDrvSeatMemoryIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1222
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "drv_sear_memory_index"

    .line 1223
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1224
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setDrvSeatVentLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2120
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_drv_seat_vent_level_int"

    .line 2121
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2122
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setEasyLoadingStatus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2566
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "easy_loading_bool"

    .line 2567
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2568
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setEbwSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 819
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ebw_bool"

    .line 820
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 821
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setEnergyRecycleGrade(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation

    .line 1094
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_energy_recycle_int"

    .line 1095
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1096
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setEnterSpaceCapsuleFromButton(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromButton"
        }
    .end annotation

    .line 2417
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_enter_capsule_from_button_bool"

    .line 2418
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2419
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setEsbEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 788
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_electric_belt_bool"

    .line 789
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 790
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setEspBpfMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2851
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_esp_bpf"

    .line 2852
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2853
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setEspCstSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2840
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_esp_cst_sw"

    .line 2841
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2842
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setEspSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1180
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_esp_mode_bool"

    .line 1181
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1182
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFirstEnterXpowerFlag(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1159
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_first_enter_xpower_flag_boolean"

    .line 1160
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1161
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFirstExitSpaceCapsuleMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFirst"
        }
    .end annotation

    .line 2403
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_first_exit_capsule_bool"

    .line 2404
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2405
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFirstOpenCngpSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2890
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_first_open_cngp_sw_bool"

    .line 2891
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2892
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFirstOpenXngpSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2902
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_first_open_xngp_sw_bool"

    .line 2903
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2904
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFirstStartSpaceCapsuleMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFirst"
        }
    .end annotation

    .line 2392
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_first_start_capsule_bool"

    .line 2393
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2394
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setForestDownloadId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 2517
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_forest_id_med"

    .line 2518
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2519
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setGreenLightRemindStateSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2968
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_green_light_remind"

    .line 2969
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2970
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setHeadLampState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_head_lamp_int"

    .line 96
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 97
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setHighSpdCloseWinSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1726
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_auto_close_window_bool"

    .line 1727
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1728
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setHvacBlowModeAuto(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1685
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_hvac_blow_mode_auto"

    .line 1686
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1687
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setHvacSelfDry(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1662
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_hvac_self_dry_bool"

    .line 1663
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1664
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIcmBrightness(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2224
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_icm_brightness_int"

    .line 2225
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2226
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIcmMeditation(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter"
        }
    .end annotation

    .line 2234
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_icm_meditation_bool"

    .line 2235
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2236
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIgOnAutoCheckSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 2948
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_auto_check_sw"

    .line 2949
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2950
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setImsAutoVisionSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 2818
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ims_auto_vision_sw"

    .line 2819
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2820
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setImsMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2829
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ims_mode"

    .line 2830
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2831
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIntelligentOverspeedRemindStateSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2978
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_intelligent_overspeed_remind"

    .line 2979
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2980
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setIslaConfirmMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1050
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_isla_confirm_mode"

    .line 1051
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1052
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setIslaSpdRange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spdRange"
        }
    .end annotation

    .line 1039
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_isla_spd_range"

    .line 1040
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1041
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setIslaSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1006
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_isla"

    .line 1007
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1008
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLCCVideoWatched(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watched"
        }
    .end annotation

    .line 2319
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_lcc_video_watched_bool"

    .line 2320
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2321
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLLuDanceCurrentSelectRscId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscId"
        }
    .end annotation

    .line 2216
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "llu_dance_current_select_rsc_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLLuDanceLastPlayRscId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscId"
        }
    .end annotation

    .line 2196
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "llu_dance_last_play_rsc_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLampHeightLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_lamp_height_level_int"

    .line 107
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 108
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastDriveMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 3116
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_last_drive_mode"

    .line 3117
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3118
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLeaveAutoLock(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_leave_auto_lock_bool"

    .line 270
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 271
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLeftChildLockSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_left_child_lock"

    .line 356
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 357
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLeftDoorHotKeySw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_left_door_hot_key"

    .line 396
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 397
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLeftSlideDoorMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2298
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_left_slider_door_mode"

    .line 2299
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2300
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLightMeHome(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_light_me_home_bool"

    .line 150
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLightMeHomeTime(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_light_me_home_time_int"

    .line 170
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 171
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLluAutoVolume(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoVolume"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_confirm_dialog_auto_volume"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLluAutoWindow(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoWindow"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_confirm_dialog_auto_window"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLluChargeSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1801
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_charge_sw"

    .line 1802
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1803
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLluEffectLockingMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectMode"
        }
    .end annotation

    .line 1807
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_effect_locking_mode"

    .line 1808
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1809
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLluLockSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1790
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_lock_sw"

    .line 1791
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1792
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLluOrderPlay(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoVolume"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_confirm_dialog_order_play"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 57
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLluSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1768
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_sw"

    .line 1769
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1770
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLluUnlockSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1779
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_unlock_sw"

    .line 1780
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1781
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLockResponseNew(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_lock_response_new_int"

    .line 314
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 315
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setMapUserExperiencePlanState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1028
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_map_user_privacy"

    .line 1029
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1030
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setMassageMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_RR_MASSAGE_MODE"

    .line 1387
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1388
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1381
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_RL_MASSAGE_MODE"

    .line 1382
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1383
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1376
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_PSN_MASSAGE_MODE"

    .line 1377
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1378
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1371
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_DRV_MASSAGE_MODE"

    .line 1372
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1373
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public static setMedDownloadId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 2512
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_meditation_id_med"

    .line 2513
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2514
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMediDayNightMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2244
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_meditation_day_night_int"

    .line 2245
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2246
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMeditationAtlSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2528
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_meditation_atl_sw"

    .line 2529
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2530
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMeditationDownloadResult(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 2476
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 2477
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2478
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMeditationLastPlayIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2462
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_meditation_last_play_index"

    .line 2463
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2464
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMemParkVideoWatched(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watched"
        }
    .end annotation

    .line 2328
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mem_park_video_watched_bool"

    .line 2329
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2330
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMeterMenuMediaSource(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mm_media_src_bool"

    .line 549
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 550
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMeterMenuScreenLight(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 559
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mm_screen_brightness_bool"

    .line 560
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 561
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMeterMenuTemperature(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mm_temp_bool"

    .line 516
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 517
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMeterMenuWindMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 537
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mm_wind_mode_bool"

    .line 538
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 539
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMeterMenuWindPower(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mm_wind_power_bool"

    .line 527
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 528
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setMicrophoneMute(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 768
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_microphone_mute_bool"

    .line 769
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 770
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setMirrorAutoDown(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1622
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mirror_down_bool"

    .line 1623
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1624
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setMirrorAutoFoldEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1590
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mirror_auto_fold"

    .line 1591
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1592
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setMirrorReverseMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1578
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mirror_reverse"

    .line 1579
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1580
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMomentDownloadId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 2506
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_meditation_id_moment"

    .line 2507
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2508
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setNGearWarningSwitch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2060
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_n_gear_warning_sw"

    .line 2061
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2062
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setNearAutoUnlock(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_near_auto_unlock_bool"

    .line 250
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 251
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNewDriveXPedalMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2369
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_new_drive_xpedal_bool"

    .line 2370
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2371
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setNfcKeyEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2438
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_nfc_key_enable_bool"

    .line 2439
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2440
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNormalDriveModeEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2693
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_normal_special_drive_bool"

    .line 2694
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2695
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setNraState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1067
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_nra"

    .line 1068
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1069
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setNraSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1056
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_nra_sw"

    .line 1057
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1058
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setParkAutoUnlock(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_parking_auto_unlock_bool"

    .line 230
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 231
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setParkLampB(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_park_lamp_b_bool"

    .line 130
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setPhoneRemindSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 746
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_phone_reminder_sw_bool"

    .line 747
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 748
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setPollingLightWelcomeMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 484
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_polling_light_welcome_mode_bool"

    .line 485
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 486
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPsnLumbControlSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2873
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_psn_lumb_sw"

    .line 2874
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2875
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setPsnSeatHeatLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2131
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_psn_seat_heat_level_int"

    .line 2132
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2133
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setPsnSeatMemoryIndex(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "selectId"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1270
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "psn_seat_memory_index2"

    .line 1271
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1272
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1265
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "psn_seat_memory_index1"

    .line 1266
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1267
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1260
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "psn_seat_memory_index0"

    .line 1261
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1262
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method static setPsnSrsEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2450
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_psn_srs_enable_bool"

    .line 2451
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2452
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setPsnWelcomeMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 448
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_psn_welcome_mode_bool"

    .line 449
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 450
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setRLSeatHeatLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2261
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_rl_seat_heat_level_int"

    .line 2262
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2263
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setRRSeatHeatLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2250
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_rr_seat_heat_level_int"

    .line 2251
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2252
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRearLogoLightSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2908
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_rear_car_light_sw"

    .line 2909
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2910
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setRearMirrorData(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorData"
        }
    .end annotation

    .line 1611
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mirror_pos_string"

    .line 1612
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1613
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setRearSeatWelcomeMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 460
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_rear_seat_welcome_mode_bool"

    .line 461
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 462
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReserveTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 2958
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_reserve_time"

    .line 2959
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2960
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setRightChildLockSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_right_child_lock"

    .line 376
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 377
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setRightDoorHotKeySw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 416
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_right_door_hot_key"

    .line 417
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 418
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRightSlideDoorMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2309
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_right_slider_door_mode"

    .line 2310
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2311
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setRsbWarningEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_rear_belt_warning_bool"

    .line 809
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 810
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setSdcBrakeCloseCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 2699
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_sdc_brake_close"

    .line 2700
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2701
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setSdcKeyCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 2079
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_sdc_key_cfg"

    .line 2080
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2081
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSdcMaxAutoDoorOpeningAngle(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 2287
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_sdc_max_auto_door_opening_angle"

    .line 2288
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2289
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setSdcWinAutoDown(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2098
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_sdc_auto_win_down"

    .line 2099
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2100
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSeaDownloadId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 2522
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_sea_id_med"

    .line 2523
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2524
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSecRowLeftSeatBeltWarning(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 3008
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_child_belt_sec_left_sw"

    .line 3009
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3010
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSecRowMidSeatBeltWarning(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 3020
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_child_belt_sec_mid_sw"

    .line 3021
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3022
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSecRowRightSeatBeltWarning(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 3032
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_child_belt_sec_right_sw"

    .line 3033
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3034
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setSoldierSwStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2033
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_soldier_status"

    .line 2034
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2035
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSpaceCapsuleSleepBgmOpen(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOpen"
        }
    .end annotation

    .line 2938
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "space.capsule.sleepBgmOpen"

    .line 2939
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2940
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSpaceCapsuleSleepMusic(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 2428
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_space_capsule_sleep_music"

    .line 2429
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2430
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSpaceCapsuleUGEnterShowCheckBox(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelected"
        }
    .end annotation

    .line 2918
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "space.capsule.showUGNextTimeEnter"

    .line 2919
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2920
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSpaceCapsuleUGExitShowCheckBox(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelected"
        }
    .end annotation

    .line 2928
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "space.capsule.showUGNextTimeExit"

    .line 2929
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2930
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSpecialDriveMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2675
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_special_drive_mode_int"

    .line 2676
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2677
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSpeedLimit(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 570
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_speed_limit_bool"

    .line 571
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 572
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSpeedLimitValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 581
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_speed_limit_int"

    .line 582
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 583
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStartRemindStateSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2988
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_start_remind"

    .line 2989
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2990
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setSteerHeatLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2272
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_steer_heat_level_int"

    .line 2273
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2274
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSteerPos(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 2548
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_steer_pos_string"

    .line 2549
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2550
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSteeringEps(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eps"
        }
    .end annotation

    .line 984
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_wheel_eps_int"

    .line 985
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 986
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrailerHitchStatus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2554
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ttm_status_bool"

    .line 2555
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2556
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrdRowLeftSeatBeltWarning(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 3045
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_child_belt_trd_left_sw"

    .line 3046
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3047
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrdRowMidSeatBeltWarning(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 3058
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_child_belt_trd_mid_sw"

    .line 3059
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3060
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrdRowRightSeatBeltWarning(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 3070
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_child_belt_trd_right_sw"

    .line 3071
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3072
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrunkFullOpenPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 2608
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_trunk_open_pos_int"

    .line 2609
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2610
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrunkSensorEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2596
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_trunk_sensor_enable_bool"

    .line 2597
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2598
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setUnLockResponseNew(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_unlock_response_new_int"

    .line 336
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 337
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setUnlockResponse(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_unlock_response_int"

    .line 292
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 293
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUserDefineDriveMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2358
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_user_define_drive_mode_int"

    .line 2359
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2360
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUserDefineDriveModeInfo(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "info"
        }
    .end annotation

    .line 2334
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v1, 0xb

    if-le p0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_user_define_drive_mode_info_str_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pref_user_define_drive_mode_info_str"

    .line 2335
    :goto_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2337
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUserDefineDriveModeInfo(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 2347
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_user_define_drive_mode_info_str"

    .line 2348
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2349
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setVenusDownloadId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 2500
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_meditation_id_venus"

    .line 2501
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2502
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setWaistReliefMemoryMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1411
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_PSN_WAIST_MODE"

    .line 1412
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1413
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1406
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CHAIR_DRV_WAIST_MODE"

    .line 1407
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1408
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method static setWelcomeMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_welcome_mode_bool"

    .line 437
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 438
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setWheelKeyProtectSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2049
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_wheel_key_protect"

    .line 2050
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2051
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setWheelXKey(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1938
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_wheel_x_key"

    .line 1939
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1940
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setWindowLockState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1756
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_win_lock_state"

    .line 1757
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1758
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setWindowSyncEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1707
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_window_sync_bool"

    .line 1708
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1709
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setWiperIntervalGear(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation

    .line 603
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_wiper_interval_gear_int"

    .line 604
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 605
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setXpedal(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2151
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_xpedal_bool"

    .line 2152
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2153
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setXpilotUserExperiencePlanState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1017
    sget-object v0, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->sSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_xpilot_user_privacy"

    .line 1018
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1019
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
