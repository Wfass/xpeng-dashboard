.class Lcom/xiaopeng/carcontrol/direct/DirectData;
.super Ljava/lang/Object;
.source "DirectData.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "CarControl"

.field public static final DRV_SIDE:Ljava/lang/String; = "drv_side"

.field public static final PSN_SIDE:Ljava/lang/String; = "psn_side"

.field public static final SCHEME:Ljava/lang/String; = "XPPlugin_CarControlApp"

.field public static final SEAT_ADJUST_AUTHORITY:Ljava/lang/String; = "XPPlugin_SeatAdjuestApp"

.field public static final SEAT_ADJUST_SCHEME:Ljava/lang/String; = "XPPlugin_SeatAdjuestApp"

.field public static final SEAT_MASSAGE_AUTHORITY:Ljava/lang/String; = "XPPlugin_SeatMassageApp"

.field public static final SEAT_MASSAGE_SCHEME:Ljava/lang/String; = "XPPlugin_SeatMassageApp"

.field public static final rl_SIDE:Ljava/lang/String; = "rl_side"

.field public static final rr_SIDE:Ljava/lang/String; = "rr_side"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadItemData()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/xiaopeng/carcontrol/direct/support/XPilotXpuCheckAction;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/direct/support/XPilotXpuCheckAction;-><init>()V

    .line 150
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/support/XpilotXngpCheckAction;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/direct/support/XpilotXngpCheckAction;-><init>()V

    .line 151
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 152
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/support/NormalCheckAction;

    invoke-direct {v3}, Lcom/xiaopeng/carcontrol/direct/support/NormalCheckAction;-><init>()V

    .line 154
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_CommonlyUsed/xpedal"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_CommonlyUsed/dcport"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_CommonlyUsed/acport"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_CommonlyUsed/trunk"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_DriveExperience/drive_mode"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/EnergyRecycleCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/EnergyRecycleCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_DriveExperience/recycle"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/SeatControlAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/SeatControlAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "XPPlugin_SeatAdjuestApp.CarControl_L03_SeatAdjustment/drv_side"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/SeatControlAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/SeatControlAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "XPPlugin_SeatAdjuestApp.CarControl_L03_SeatAdjustment/psn_side"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/RearSeatCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/RearSeatCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "XPPlugin_SeatAdjuestApp.CarControl_L03_SeatAdjustment/rl_side"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/RearSeatCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/RearSeatCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "XPPlugin_SeatAdjuestApp.CarControl_L03_SeatAdjustment/rr_side"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/SeatMassageAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/SeatMassageAction;-><init>()V

    .line 169
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v6, "XPPlugin_SeatMassageApp.SeatMassageView/seat_massage"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "XPPlugin_SeatMassageApp.SeatMassageView/seat_rhythm"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/MirrorControlCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/MirrorControlCheckAction;-><init>()V

    .line 174
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    const-string/jumbo v6, "reverse_left"

    const v7, 0x7f0a01d1

    invoke-direct {v5, v6, v7, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Ljava/lang/String;ILcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v7, "CarControl.CarControl_Popup_SettingRearviewMirror/reverse_left"

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    const v7, 0x7f0a02b5

    invoke-direct {v5, v6, v7, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Ljava/lang/String;ILcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_Popup_SettingRearviewMirror/reverse_right"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L03_SettingWindow/drv_side"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L03_SettingWindow/psn_side"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L03_SettingWindow/auto_window_lock"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L03_SettingWindow/high_speed_close_win"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L03_ExtreirorLight/head_lamp"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L03_ExtreirorLight/lamp_height"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L03_ExtreirorLight/fog_lamp"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/LluCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/LluCheckAction;-><init>()V

    .line 192
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v6, "CarControl.CarControl_L03_LightSetting/llu_switch"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v6, "CarControl.CarControl_L03_LightSetting/park_lamp_mode"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v6, "CarControl.CarControl_L03_LightSetting/llu_unlock_switch"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v6, "CarControl.CarControl_L03_LightSetting/llu_lock_switch"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_LightSetting/llu_charge_switch"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L03_LightSetting/light_me_home"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/AtlCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/AtlCheckAction;-><init>()V

    .line 202
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v6, "CarControl.CarControl_L03_AmbientLight/atl_brightness"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v6, "CarControl.CarControl_L03_AmbientLight/atl_color"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v5, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v5, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_AmbientLight/atl_dualcolor_switch"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/unlock_response"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/dhc"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/park_auto_unlock"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/SnowModeCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/SnowModeCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/snow_mode"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/NStallCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/NStallCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/n_stall_sw"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/EpsShowCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/EpsShowCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/steering_eps"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/CdcControlCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/CdcControlCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/cdc_control"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/SeatCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/SeatCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/seat_welcome"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/PsnSeatCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/PsnSeatCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/psn_seat_welcome"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/RearSeatWelcomeCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/RearSeatWelcomeCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/rear_seat_welcome"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/AsCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/AsCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/as_welcome"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/boot_sound_effect"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/epb"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/avh"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/esp"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/hdc"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/SensorCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/SensorCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/sensor_trunk"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/AsCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/AsCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/easy_loading"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/trunk_angle"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/EsbCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/EsbCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/esb_sw"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/rsb_warning"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/DsmCameraCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/DsmCameraCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/dsm_camera"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/microphone"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/CwcCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/CwcCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/cwc"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/CwcFrCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/CwcFrCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/cwc_fr"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/AsCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/AsCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/as_repair"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/wiper_repair"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/RearWiperCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/RearWiperCheckAction;-><init>()V

    invoke-direct {v4, v5}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v5, "CarControl.CarControl_L02_VehicleSettings/rear_wiper_repair"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v4, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v4, v3}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v3, "CarControl.CarControl_L02_VehicleSettings/park_dropdown_menu"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/ChildLockCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/ChildLockCheckAction;-><init>()V

    invoke-direct {v3, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_VehicleSettings/leftDoor_childLock"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/ChildLockCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/ChildLockCheckAction;-><init>()V

    invoke-direct {v3, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_VehicleSettings/rightDoor_childLock"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/ArsCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/ArsCheckAction;-><init>()V

    invoke-direct {v3, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_VehicleSettings/ars_sw"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/fcw"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/bsd"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/RaebCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/RaebCheckAction;-><init>()V

    invoke-direct {v3, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/raeb"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/dow"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/ldw"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/rcw"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/rcta"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/ssa"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/nra"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/turn_assistant"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/lss"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/isla"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/auto_park"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/mem_park"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/key_park"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/key_park_pro"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/lcc"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/alc"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/ngp"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/cngp"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L02_ADAS/nedc"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_CustomNGP/tip_window"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_CustomNGP/voice_change_lane"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_CustomNGP/over_take"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_CustomNGP/remind_mode"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/fcw"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/bsd"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/dow"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/RaebCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/RaebCheckAction;-><init>()V

    invoke-direct {v3, v4}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/raeb"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/rcw"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/rcta"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/ssa"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/nra"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/turn_assistant"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/lss"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety/isla"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XPILOPPakingInfo_Day/auto_park"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XPILOPPakingInfo_Day/mem_park"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XPILOPPakingInfo_Day/key_park"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XPILOPPakingInfo_Day/key_park_pro"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XPILOPDriving_Day/ngp"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v3, v1}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v1, "CarControl.CarControl_L03_XPILOPDriving_Day/ngp_lidar"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v3, "CarControl.CarControl_L03_XPILOPDriving_Day/lcc"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v3, "CarControl.CarControl_L03_XPILOPDriving_Day/alc"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;-><init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v0, "CarControl.CarControl_L03_XPILOPDriving_Day/cngp"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method static loadPageData()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/direct/PageDirectItem;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/xiaopeng/carcontrol/direct/support/XPilotXpuCheckAction;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/direct/support/XPilotXpuCheckAction;-><init>()V

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    new-instance v2, Lcom/xiaopeng/carcontrol/direct/action/NormalPageAction;

    invoke-direct {v2}, Lcom/xiaopeng/carcontrol/direct/action/NormalPageAction;-><init>()V

    .line 71
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L02_CommonlyUsed"

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L02_DriveExperience"

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/action/MirrorControlPageAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/action/MirrorControlPageAction;-><init>()V

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/MirrorControlCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/MirrorControlCheckAction;-><init>()V

    const-string v6, "CarControl.CarControl_Popup_SettingRearviewMirror"

    invoke-direct {v3, v6, v4, v5}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/action/SteerControlPageAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/action/SteerControlPageAction;-><init>()V

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/SteerControlAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/SteerControlAction;-><init>()V

    const-string v6, "CarControl.CarControl_Popup_SteeringWheelAdjustment"

    invoke-direct {v3, v6, v4, v5}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L03_SettingWindow"

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L02_Light"

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L03_ExtreirorLight"

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/AtlCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/AtlCheckAction;-><init>()V

    const-string v5, "CarControl.CarControl_L03_AmbientLight"

    invoke-direct {v3, v5, v4}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L03_LightSetting"

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/LluCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/LluCheckAction;-><init>()V

    const-string v5, "CarControl.CarControl_L04_SayHi"

    invoke-direct {v3, v5, v4}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/SeatMassageAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/SeatMassageAction;-><init>()V

    const-string v5, "XPPlugin_SeatMassageApp.SeatMassageView"

    invoke-direct {v3, v5, v4}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L02_VehicleSettings"

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "XPPlugin_SeatAdjuestApp.CarControl_L03_SeatAdjustment"

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/action/SeatInfoPageAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/action/SeatInfoPageAction;-><init>()V

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/SeatKeyInfoCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/SeatKeyInfoCheckAction;-><init>()V

    const-string v6, "XPPlugin_SeatMassageApp.SeatMassage_PopUp_SeatInfo_Dialog"

    invoke-direct {v3, v6, v4, v5}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/action/LumbarControlPageAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/action/LumbarControlPageAction;-><init>()V

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/LumbarControlCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/LumbarControlCheckAction;-><init>()V

    const-string v6, "XPPlugin_SeatAdjuestApp.LumbarAdjust"

    invoke-direct {v3, v6, v4, v5}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/support/AsCheckAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/support/AsCheckAction;-><init>()V

    const-string v5, "CarControl.CarControl_L03_CustomDrivingModeSettings"

    invoke-direct {v3, v5, v2, v4}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_Popup_CustomDrivingModeSettings_Check"

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/action/XKeySettingPageAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/action/XKeySettingPageAction;-><init>()V

    const-string v5, "CarControl.CarControl_Popup_SettingXButton"

    invoke-direct {v3, v5, v4}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/action/DoorKeySettingPageAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/action/DoorKeySettingPageAction;-><init>()V

    const-string v5, "CarControl.CarControl_Popup_SettingPassengerDoorShortcut"

    invoke-direct {v3, v5, v4}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    new-instance v4, Lcom/xiaopeng/carcontrol/direct/action/TtmSettingPageAction;

    invoke-direct {v4}, Lcom/xiaopeng/carcontrol/direct/action/TtmSettingPageAction;-><init>()V

    new-instance v5, Lcom/xiaopeng/carcontrol/direct/support/TtmCheckAction;

    invoke-direct {v5}, Lcom/xiaopeng/carcontrol/direct/support/TtmCheckAction;-><init>()V

    const-string v6, "CarControl.CarControl_Popup_TrailerMode"

    invoke-direct {v3, v6, v4, v5}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L02_ADAS"

    invoke-direct {v3, v4, v2, v0}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L03_ChildSafetyModel"

    invoke-direct {v3, v4, v2, v2}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L03_XpilotSafety"

    invoke-direct {v3, v4, v2, v0}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XpilotSafety"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L03_XPILOPPakingInfo_Day"

    invoke-direct {v3, v4, v2, v0}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v4, "CarControl.CarControl_L03_XPILOPPakingInfo_Day"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v3, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    const-string v4, "CarControl.CarControl_L03_XPILOPDriving_Day"

    invoke-direct {v3, v4, v2, v0}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;-><init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V

    const-string v0, "CarControl.CarControl_L03_XPILOPDriving_Day"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
