.class public Lcom/xiaopeng/carcontrol/model/FunctionModel;
.super Ljava/lang/Object;
.source "FunctionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/model/FunctionModel$LazyHolder;
    }
.end annotation


# static fields
.field private static final DEF_UNLOCK_REQ_SRC:I = 0x0

.field public static final KEY_HVAC_AUTO_DEFOG_SWITCH:Ljava/lang/String; = "auto_defog_work_switch"

.field private static final KEY_HVAC_SMART_SINGLE_PSN_SEAT_ACTIVE:Ljava/lang/String; = "hvac_smart_single_psn_seat_active"

.field private static final KEY_HVAC_SMART_SINGLE_PSN_SEAT_HEAT:Ljava/lang/String; = "hvac_smart_single_psn_seat_heat"

.field private static final KEY_HVAC_SMART_SINGLE_PSN_SEAT_VENT:Ljava/lang/String; = "hvac_smart_single_psn_seat_vent"

.field private static final PREF_DRIVER_GENDER_INTEGER:Ljava/lang/String; = "pref_driver_gender_integer"

.field private static final PREF_DRIVER_HEIGHT_INTEGER:Ljava/lang/String; = "pref_driver_height_integer"

.field private static final PREF_DRIVER_WEIGHT_INTEGER:Ljava/lang/String; = "pref_driver_weight_integer"

.field private static final PREF_IS_P_GEAR_REMIND_UNABLE:Ljava/lang/String; = "pref_is_p_gear_remind_unable"

.field private static final PREF_KEY_CORRECT_RMIRROR_POS_TS:Ljava/lang/String; = "correct_rmirror_pos_ts"

.field private static final PREF_KEY_KEEP_DRV_SEAT_TIME:Ljava/lang/String; = "drv_keep_seat_menu_time"

.field private static final PREF_KEY_KEEP_PSN_SEAT_TIME:Ljava/lang/String; = "psn_keep_seat_menu_time"

.field private static final PREF_KEY_REQUEST_CAR_PLATE_TS:Ljava/lang/String; = "request_car_plate_ts"

.field private static final PREF_KEY_SDC_SHOW_NS_TS:Ljava/lang/String; = "sdc_show_narrow_space_tts"

.field private static final PREF_NETWORK_DEV:Ljava/lang/String; = "pref_network_env"

.field private static final PREF_NEW_STEER_KEY_BOOL:Ljava/lang/String; = "pref_new_key"

.field private static final PREF_UNLOCK_REQ_SRC:Ljava/lang/String; = "unlock_req_src"

.field private static final PREF_UPLOAD_RESUME_BI_TIME:Ljava/lang/String; = "upload_resume_bi_time"

.field private static final SP_FILE_NAME:Ljava/lang/String; = "function_sp"

.field public static final SP_GEEK_CONFIG_STR:Ljava/lang/String; = "geek_config_str"

.field private static final SP_KEY_AIR_PROTECT_TS:Ljava/lang/String; = "air_protect_ts"

.field private static final SP_KEY_CHARGE_PORT_RETRY_TIME:Ljava/lang/String; = "charge_port_retry_time"

.field private static final SP_KEY_DRIVE_MODE_CHANGED_BY_USER_BOOL:Ljava/lang/String; = "drive_mode_changed_by_user"

.field private static final SP_KEY_HIGH_SPD_CLOSE_WIN_TS:Ljava/lang/String; = "smart_win_ts"

.field private static final SP_KEY_HVAC_AIR_PURGE_MODE:Ljava/lang/String; = "hvac_air_purge_mode"

.field private static final SP_KEY_HVAC_DEODORANT:Ljava/lang/String; = "hvac_deodorant"

.field private static final SP_KEY_HVAC_DEODORANT_COUNTDOWN:Ljava/lang/String; = "hvac_deodorant_countdown"

.field private static final SP_KEY_HVAC_DEODORANT_TIME:Ljava/lang/String; = "hvac_deodorant_time"

.field private static final SP_KEY_HVAC_DRV_TEMP_SYNC_MODE:Ljava/lang/String; = "hvac_drv_temp_sync_mode"

.field private static final SP_KEY_HVAC_DRV_TEMP_SYNC_TIME:Ljava/lang/String; = "hvac_drv_temp_sync_time"

.field private static final SP_KEY_HVAC_PURGE_CLICK_TIME:Ljava/lang/String; = "hvac_purge_click_time"

.field private static final SP_KEY_HVAC_RAPID_COOLING:Ljava/lang/String; = "hvac_rapid_cooling"

.field private static final SP_KEY_HVAC_RAPID_COOLING_COUNTDOWN:Ljava/lang/String; = "hvac_rapid_cooling_countdown"

.field private static final SP_KEY_HVAC_RAPID_COOLING_TIME:Ljava/lang/String; = "hvac_rapid_cooling_time"

.field private static final SP_KEY_HVAC_RAPID_HEAT:Ljava/lang/String; = "hvac_rapid_heat"

.field private static final SP_KEY_HVAC_RAPID_HEAT_COUNTDOWN:Ljava/lang/String; = "hvac_rapid_heat_count_down"

.field private static final SP_KEY_HVAC_RAPID_HEAT_TIME:Ljava/lang/String; = "hvac_rapid_heat_time"

.field private static final SP_KEY_HVAC_SMART_AC_PTC:Ljava/lang/String; = "hvac_smart_ac_ptc"

.field private static final SP_KEY_HVAC_SMART_AQS:Ljava/lang/String; = "hvac_smart_aqs"

.field private static final SP_KEY_HVAC_SMART_AUTO:Ljava/lang/String; = "hvac_smart_auto"

.field private static final SP_KEY_HVAC_SMART_BLOW_MODE:Ljava/lang/String; = "hvac_smart_blow_mode"

.field private static final SP_KEY_HVAC_SMART_CIRCULATION:Ljava/lang/String; = "hvac_smart_circulation"

.field private static final SP_KEY_HVAC_SMART_DRV_SEAT_HEAT:Ljava/lang/String; = "hvac_smart_drv_seat_heat"

.field private static final SP_KEY_HVAC_SMART_DRV_SEAT_VENT:Ljava/lang/String; = "hvac_smart_drv_seat_vent"

.field private static final SP_KEY_HVAC_SMART_DRV_TEMP:Ljava/lang/String; = "hvac_smart_drv_temp"

.field private static final SP_KEY_HVAC_SMART_DRV_VENT_MODE:Ljava/lang/String; = "hvac_smart_drv_vent_mode"

.field private static final SP_KEY_HVAC_SMART_DRV_VENT_POSITION:Ljava/lang/String; = "hvac_smart_drv_vent_position"

.field private static final SP_KEY_HVAC_SMART_ECON:Ljava/lang/String; = "hvac_smart_econ"

.field private static final SP_KEY_HVAC_SMART_FAN_SPEED:Ljava/lang/String; = "hvac_smart_fan_speed"

.field private static final SP_KEY_HVAC_SMART_MODE_CLICK_TIME:Ljava/lang/String; = "hvac_smart_mode_click_time"

.field private static final SP_KEY_HVAC_SMART_PSN_SEAT_HEAT:Ljava/lang/String; = "hvac_smart_psn_seat_heat"

.field private static final SP_KEY_HVAC_SMART_PSN_SEAT_VENT:Ljava/lang/String; = "hvac_smart_psn_seat_vent"

.field private static final SP_KEY_HVAC_SMART_PSN_TEMP:Ljava/lang/String; = "hvac_smart_psn_temp"

.field private static final SP_KEY_HVAC_SMART_PSN_VENT_MODE:Ljava/lang/String; = "hvac_smart_psn_vent_mode"

.field private static final SP_KEY_HVAC_SMART_PSN_VENT_POSITION:Ljava/lang/String; = "hvac_smart_psn_vent_position"

.field private static final SP_KEY_HVAC_SMART_QUALITY_PURGE:Ljava/lang/String; = "hvac_smart_quality_purge"

.field private static final SP_KEY_HVAC_SMART_RL_SEAT_HEAT:Ljava/lang/String; = "hvac_smart_rl_seat_heat"

.field private static final SP_KEY_HVAC_SMART_RR_SEAT_HEAT:Ljava/lang/String; = "hvac_smart_rr_seat_heat"

.field private static final SP_KEY_HVAC_SMART_SINGLE_ACTIVE:Ljava/lang/String; = "hvac_smart_single_active"

.field private static final SP_KEY_HVAC_SMART_SINGLE_MODE:Ljava/lang/String; = "hvac_smart_single_mode"

.field private static final SP_KEY_HVAC_SMART_STEER_HEAT:Ljava/lang/String; = "hvac_smart_steer_heat"

.field private static final SP_KEY_IGON_NANO_TS:Ljava/lang/String; = "igon_nano_ts"

.field private static final SP_KEY_IGON_TS:Ljava/lang/String; = "igon_ts"

.field private static final SP_KEY_LOW_POWER_100_TS:Ljava/lang/String; = "low_power_100_ts"

.field private static final SP_KEY_LOW_POWER_30_TS:Ljava/lang/String; = "low_power_30_ts"

.field private static final SP_KEY_LOW_POWER_60_TS:Ljava/lang/String; = "low_power_60_ts"

.field private static final SP_KEY_OFFGAS_PROTEXT_TC:Ljava/lang/String; = "offgas_protect_ts"

.field private static final SP_KEY_REMIND_WARNING_TS:Ljava/lang/String; = "remind_warning_ts"

.field private static final SP_KEY_RSB_WARNING_RESET_FLAG:Ljava/lang/String; = "rsb_warning_reset_flag"

.field private static final SP_KEY_SMART_HVAC_TS:Ljava/lang/String; = "smart_hvac_ts"

.field private static final SP_KEY_TELESCOPE_REMIND_TS:Ljava/lang/String; = "telescope_remind_ts"

.field private static final SP_KEY_UNLOCK_RSP_TRANSFER_FLAG:Ljava/lang/String; = "unlock_rsp_transfer_flag"

.field private static final SP_KEY_WIN_LOCK_TIP_TS:Ljava/lang/String; = "win_lock_tip_ts"

.field public static final SP_USE_AI_POWER_GEEK_CONFIG:Ljava/lang/String; = "use_ai_power_geek_config"

.field private static final TAG:Ljava/lang/String; = "FunctionModel"


# instance fields
.field private mIgonNanoTime:J

.field private mIgonTime:J

.field private mImsModeChangeByUser:Z

.field private mInDrvSeatMenuShowTime:Z

.field private mInPsnSeatMenuShowTime:Z

.field private final mSp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 7

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "function_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "igon_ts"

    const-wide/16 v3, 0x0

    .line 134
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    const-string v1, "igon_nano_ts"

    .line 135
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonNanoTime:J

    .line 137
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const-string v0, "FunctionModel"

    const-string v1, "IGON timestamp is null, use current time"

    .line 138
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setIgonTime(J)V

    .line 141
    :cond_0
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonNanoTime:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setIgonNanoTime(J)V

    :cond_1
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInDrvSeatMenuShowTime:Z

    .line 145
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInPsnSeatMenuShowTime:Z

    .line 146
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mImsModeChangeByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/model/FunctionModel$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;
    .locals 1

    .line 121
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel$LazyHolder;->access$100()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    return-object v0
.end method

.method private isFuncLowPowerAllowed(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFuncLowPowerAllowed igon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last low power type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " with timestamp: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FunctionModel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    iget-wide v4, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long p1, v4, v0

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private setLowPowerTs(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "timestamp"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 256
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getChargePortRetryEnable()I
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "charge_port_retry_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDriverGender()I
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_driver_gender_integer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDriverHeight()I
    .locals 3

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_driver_height_integer"

    const/16 v2, 0xa0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDriverWeight()I
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_driver_weight_integer"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEnv()I
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_network_env"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGeekConfigStr()Ljava/lang/String;
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "geek_config_str"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHvacDeodorantCountdown()I
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_deodorant_countdown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacDeodorantTime()J
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_deodorant_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHvacPurgeClickTime()J
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_purge_click_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHvacRapidCoolingCountdown()I
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_rapid_cooling_countdown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacRapidCoolingTime()J
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_rapid_cooling_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHvacRapidHeatCountdown()I
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_rapid_heat_count_down"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacRapidHeatTime()J
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_rapid_heat_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHvacSingleModePsnSeatActive()I
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_single_psn_seat_active"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSingleModePsnSeatHeatLevel()I
    .locals 4

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_single_psn_seat_heat"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHvacSingleModePsnSeatHeatLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FunctionModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getHvacSingleModePsnSeatVentLevel()I
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_single_psn_seat_vent"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHvacSingleModePsnSeatVentLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FunctionModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getHvacSmartAcPtcMode()I
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_ac_ptc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartAqsMode()I
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_aqs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartBlowMode()I
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_blow_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartCirculation()I
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_circulation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartDrvSeatHeat()I
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_drv_seat_heat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartDrvSeatVent()I
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_drv_seat_vent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartDrvTemp()F
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_drv_temp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getHvacSmartDrvVentMode()I
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_drv_vent_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartDrvVentPosition()Ljava/lang/String;
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_drv_vent_position"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHvacSmartEconMode()I
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_econ"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartFanSpeed()I
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_fan_speed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartModeClickTime()J
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_mode_click_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHvacSmartPsnSeatHeat()I
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_psn_seat_heat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartPsnSeatVent()I
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_psn_seat_vent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartPsnTemp()F
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_psn_temp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getHvacSmartPsnVentMode()I
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_psn_vent_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartPsnVentPosition()Ljava/lang/String;
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_psn_vent_position"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHvacSmartQualityPurge()Z
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_quality_purge"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHvacSmartRlSeatHeat()I
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_rl_seat_heat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartRrSeatHeat()I
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_rr_seat_heat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacSmartSteerHeat()I
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_steer_heat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastDriveMode()I
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_last_drive_mode_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastEspMode()Z
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_last_esp_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getResetRsbWarningSw()Z
    .locals 3

    .line 856
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "rsb_warning_reset_flag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSnowModeEnergyCache()I
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_snow_mode_energy_cache"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUnlockReqSrc()I
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "unlock_req_src"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUnlockRspTransferSw()Z
    .locals 3

    .line 866
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "unlock_rsp_transfer_flag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUploadResumeBITime()J
    .locals 4

    .line 733
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "upload_resume_bi_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAirProtectFuncAllowed()Z
    .locals 7

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "air_protect_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 196
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonNanoTime:J

    .line 198
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirProtectFuncAllowed igon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonNanoTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", last air protect timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FunctionModel"

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    iget-wide v4, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonNanoTime:J

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method public isCorrectRMirrorPosAllowed()Z
    .locals 5

    .line 763
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "correct_rmirror_pos_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCorrectRMirrorPosAllowed igon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last correct rear mirror pos timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 766
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isDefaultAutoDefogSwitch()Z
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "auto_defog_work_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefaultAutoDefogSwitch state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FunctionModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 819
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method public isDriveModeChangedByUser()Z
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "drive_mode_changed_by_user"

    const/4 v2, 0x0

    .line 268
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDriveModeChangedByUser : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FunctionModel"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isDrvMenuInShowTime()Z
    .locals 6

    .line 833
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInDrvSeatMenuShowTime:Z

    if-nez v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "drv_keep_seat_menu_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInDrvSeatMenuShowTime:Z

    .line 837
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInDrvSeatMenuShowTime:Z

    return v0
.end method

.method public isFuncLowPower100Allowed()Z
    .locals 1

    const-string v0, "low_power_100_ts"

    .line 250
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isFuncLowPowerAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFuncLowPower30Allowed()Z
    .locals 1

    const-string v0, "low_power_30_ts"

    .line 234
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isFuncLowPowerAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFuncLowPower60Allowed()Z
    .locals 1

    const-string v0, "low_power_60_ts"

    .line 242
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isFuncLowPowerAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHighSpdCloseWinFuncAllowed()Z
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "smart_win_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHighSpdCloseWinFuncAllowed igon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last smart win timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHvacAirPurgeEnable()Z
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_air_purge_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacDeodorantEnable()Z
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_deodorant"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacDrvTempSyncAllowed()Z
    .locals 5

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_drv_temp_sync_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHvacSingleTempModeAllowed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",saveTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 641
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHvacDrvTempSyncMode()Z
    .locals 3

    .line 649
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_drv_temp_sync_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacRapidCoolingEnable()Z
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_rapid_cooling"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacRapidHeatEnable()Z
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_rapid_heat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacSingleMode()Z
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_single_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacSingleModeActive()Z
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_single_active"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacSmartAutoEnable()Z
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hvac_smart_auto"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isImsModeChangeByUser()Z
    .locals 1

    .line 876
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mImsModeChangeByUser:Z

    return v0
.end method

.method public isNewSteerKey()Z
    .locals 4

    .line 696
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_new_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current wheel firmware version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FunctionModel"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isOffgasProtectFuncAllowed()Z
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "offgas_protect_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOffgasProtectFuncAllowed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last offset protect timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isPGearRemindUnable()Z
    .locals 4

    .line 707
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_is_p_gear_remind_unable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPGearRemindUnable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FunctionModel"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isPsnMenuInShowTime()Z
    .locals 6

    .line 848
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInPsnSeatMenuShowTime:Z

    if-nez v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "psn_keep_seat_menu_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInPsnSeatMenuShowTime:Z

    .line 852
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInPsnSeatMenuShowTime:Z

    return v0
.end method

.method public isRemindWarningAllowed()Z
    .locals 5

    .line 789
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "remind_warning_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRemindWarningAllowed igon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last remind warning timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 792
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isRequestCarPlateAllowed()Z
    .locals 5

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "request_car_plate_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRequestCarPlateAllowed igon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last request car plate timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 752
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isShowSdcNarrowSpaceAllowed()Z
    .locals 5

    .line 776
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sdc_show_narrow_space_tts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowSdcNarrowSpaceAllowed igon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last show narrow space tts timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 779
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isSmartHvacFuncAllowed()Z
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "smart_hvac_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmartHvacFuncAllowed igon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last smart hvac timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isTelescopeRemindAllowed()Z
    .locals 5

    .line 802
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "telescope_remind_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 804
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonNanoTime:J

    .line 806
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTelescopeRemindAllowed igon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonNanoTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last remind timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 808
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonNanoTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public isUseAiPowerGeekConfig()Z
    .locals 3

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "use_ai_power_geek_config"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isWinLockTipAllowed()Z
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "win_lock_tip_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWinLockTipAllowed igon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last win lock tip timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunctionModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public setAirProtectTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "air_protect_ts"

    .line 189
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 190
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAutoDefogSwitch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "auto_defog_work_switch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 813
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setChargePortRetryTime(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "charge_port_retry_time"

    .line 687
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 688
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDriveModeChangedByUser(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changedByUser"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDriveModeChangedByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FunctionModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "drive_mode_changed_by_user"

    .line 277
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 278
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDrvMenuNotShowTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "drv_keep_seat_menu_time"

    .line 827
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 828
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    .line 829
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInDrvSeatMenuShowTime:Z

    return-void
.end method

.method public setGeekConfigStr(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "geek_config_str"

    .line 886
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 887
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHighSpdCloseWinTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "smart_win_ts"

    .line 163
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 164
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacAirPurgeMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_air_purge_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacDeodorantCountdown(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countdown"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_deodorant_countdown"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacDeodorantEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_deodorant"

    .line 347
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 348
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacDeodorantTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_deodorant_time"

    .line 357
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 358
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacDrvTempSyncMode(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_drv_temp_sync_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacDrvTempSyncTime()V
    .locals 4

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "hvac_drv_temp_sync_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacPurgeClickTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_purge_click_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacRapidCoolingCountdown(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countdown"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_rapid_cooling_countdown"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacRapidCoolingEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_rapid_cooling"

    .line 319
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 320
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacRapidCoolingTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_rapid_cooling_time"

    .line 329
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 330
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacRapidHeatCountdown(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_rapid_heat_count_down"

    .line 396
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 397
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacRapidHeatEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_rapid_heat"

    .line 375
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 376
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacRapidHeatTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_rapid_heat_time"

    .line 385
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 386
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSingleMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_single_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSingleModeActive(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_single_active"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSingleModePsnSeatActive(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_single_psn_seat_active"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSingleModePsnSeatHeatLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_single_psn_seat_heat"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSingleModePsnSeatVentLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_single_psn_seat_vent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartAcPtcMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_ac_ptc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartAqsMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_aqs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartAutoEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_auto"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartBlowMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_blow_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartCirculation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_circulation"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartDrvSeatHeat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_drv_seat_heat"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartDrvSeatVent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_drv_seat_vent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartDrvTemp(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_drv_temp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartDrvVentMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_drv_vent_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartDrvVentPosition(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_drv_vent_position"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartEconMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_econ"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartFanSpeed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_fan_speed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartModeClickTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_mode_click_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartPsnSeatHeat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_psn_seat_heat"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartPsnSeatVent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_psn_seat_vent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartPsnTemp(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_psn_temp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartPsnVentMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_psn_vent_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartPsnVentPosition(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_psn_vent_position"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartQualityPurge(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_quality_purge"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartRlSeatHeat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_rl_seat_heat"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartRrSeatHeat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_rr_seat_heat"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHvacSmartSteerHeat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hvac_smart_steer_heat"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIgonNanoTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 157
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonNanoTime:J

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "igon_nano_ts"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIgonTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 150
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mIgonTime:J

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "igon_ts"

    .line 152
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 153
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setImsModeChangeByUser(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 880
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mImsModeChangeByUser:Z

    return-void
.end method

.method public setLastDriveMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMode"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_last_drive_mode_int"

    .line 288
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 289
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastEspMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_last_esp_mode"

    .line 298
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 299
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLowPower100Ts(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    const-string v0, "low_power_100_ts"

    .line 246
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPowerTs(Ljava/lang/String;J)V

    return-void
.end method

.method public setLowPower30Ts(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    const-string v0, "low_power_30_ts"

    .line 230
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPowerTs(Ljava/lang/String;J)V

    return-void
.end method

.method public setLowPower60Ts(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    const-string v0, "low_power_60_ts"

    .line 238
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLowPowerTs(Ljava/lang/String;J)V

    return-void
.end method

.method public setNewSteerKey()V
    .locals 3

    const-string v0, "FunctionModel"

    const-string v1, "Switch to new wheel firmware version"

    const/4 v2, 0x0

    .line 702
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_new_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setOffgasProtectTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "offgas_protect_ts"

    .line 205
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 206
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPGearRemindUnable()V
    .locals 1

    const/4 v0, 0x1

    .line 713
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setPGearRemindUnable(Z)V

    return-void
.end method

.method public setPGearRemindUnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUnable"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_is_p_gear_remind_unable"

    .line 718
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 719
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPsnMenuNotShowTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "psn_keep_seat_menu_time"

    .line 842
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 843
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    .line 844
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mInPsnSeatMenuShowTime:Z

    return-void
.end method

.method public setRearMirrorPosCorrectTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "correct_rmirror_pos_ts"

    .line 758
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 759
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRemindWarningTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remind_warning_ts"

    .line 784
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 785
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRequestCarPlateTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "request_car_plate_ts"

    .line 744
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 745
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setResetRsbWarningSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rsb_warning_reset_flag"

    .line 861
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 862
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setShowSdcNarrowSpaceTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sdc_show_narrow_space_tts"

    .line 771
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 772
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSmartHvacTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "smart_hvac_ts"

    .line 218
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 219
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSmartSeatParmData(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gender",
            "height",
            "weight"
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSmartSeatParmData gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FunctionModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_driver_gender_integer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 666
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_driver_height_integer"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 667
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pref_driver_weight_integer"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSnowModeEnergyCache(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_snow_mode_energy_cache"

    .line 309
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 310
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTelescopeRemindTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "telescope_remind_ts"

    .line 797
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 798
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUnlockReqSrc(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqSrc"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "unlock_req_src"

    .line 728
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 729
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUnlockRspTransferSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "unlock_rsp_transfer_flag"

    .line 871
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 872
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUploadResumeBITime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "upload_resume_bi_time"

    .line 738
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 739
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUseAiPowerGeekConfig(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "use"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "use_ai_power_geek_config"

    .line 900
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 901
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWinLockTipTs(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FunctionModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "win_lock_tip_ts"

    .line 176
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
