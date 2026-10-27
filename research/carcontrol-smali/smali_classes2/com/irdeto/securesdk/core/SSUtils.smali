.class public Lcom/irdeto/securesdk/core/SSUtils;
.super Ljava/lang/Object;
.source "SSUtils.java"


# static fields
.field public static final O000000o:Ljava/lang/String; = "config"

.field public static final O00000Oo:Ljava/lang/String; = "pin"

.field public static final O00000o:Ljava/lang/String; = "remember_chooose_map"

.field public static final O00000o0:Ljava/lang/String; = "cache"

.field public static final O00000oO:Ljava/lang/String; = "data_loading"

.field public static final O00000oo:Ljava/lang/String; = "pin_current_error_times"

.field public static final O0000O0o:Ljava/lang/String; = "pin_error_save_time"

.field public static final O0000OOo:Ljava/lang/String; = "pin_error_code"

.field public static final O0000Oo:Ljava/lang/String; = "pin_pv_code"

.field public static final O0000Oo0:Ljava/lang/String; = "pin_error_lock_time"

.field public static final O0000OoO:Ljava/lang/String; = "refresh_time"

.field public static final O0000Ooo:Ljava/lang/String; = "vin"

.field public static final O0000o:Ljava/lang/String; = "is_set_push_"

.field public static final O0000o0:Ljava/lang/String; = "ble_key"

.field public static final O0000o00:Ljava/lang/String; = "zxqsettings"

.field public static final O0000o0O:Ljava/lang/String; = "cache_size"

.field public static final O0000o0o:Ljava/lang/String; = "set_push"

.field public static final O0000oO:Ljava/lang/String; = "is_whistle_on"

.field public static final O0000oO0:Ljava/lang/String; = "preference_setting"

.field public static final O0000oOO:Ljava/lang/String; = "is_smart_key_on"

.field public static final O0000oOo:Ljava/lang/String; = "car_wallet_settings"

.field public static final O0000oo:Ljava/lang/String; = "Inspection_nifty"

.field public static final O0000oo0:Ljava/lang/String; = "is_join_insurance_complete"

.field public static final O0000ooO:Ljava/lang/String; = "Inspection_sixty"

.field public static final O0000ooo:Ljava/lang/String; = "Inspection_thirty"

.field public static final O000O00o:Ljava/lang/String; = "air_conditioning_first_hint"

.field public static final O000O0OO:Ljava/lang/String; = "auto_update"

.field public static final O000O0Oo:Ljava/lang/String; = "software_update"

.field public static final O000O0o:Ljava/lang/String; = "is_first_in_all_orders"

.field public static final O000O0o0:Ljava/lang/String; = "all_orders"

.field public static final O000O0oO:Ljava/lang/String; = "is_need_to_refresh"

.field public static final O000O0oo:Ljava/lang/String; = "is_need_to_add_item"

.field public static final O000OO:Ljava/lang/String; = "is_frist"

.field public static final O000OO00:Ljava/lang/String; = "channel_id"

.field public static final O000OO0o:Ljava/lang/String; = "start_newbie_guide"

.field public static final O000OOOo:Ljava/lang/String; = "version_code"

.field public static final O000OOo:Ljava/lang/String; = "zebra_coin_balance"

.field public static final O000OOo0:Ljava/lang/String; = "zebra_coin"

.field public static final O000OOoO:Ljava/lang/String; = "zebra_coin_income"

.field public static final O000OOoo:Ljava/lang/String; = "zebra_coin_cost"

.field public static final O000Oo0:Ljava/lang/String; = "city_rank"

.field public static final O000Oo00:Ljava/lang/String; = "zebra_coin_bean"

.field public static final O000Oo0O:Ljava/lang/String; = "odometer"

.field public static final O000Oo0o:Ljava/lang/String; = "vehicle_security"

.field public static final O000OoO:Ljava/lang/String; = "vehicle_resource_download"

.field public static final O000OoO0:Ljava/lang/String; = "vehicle_status_result_"

.field public static final O000OoOO:Ljava/lang/String; = "wx_share_info"

.field public static final O000OoOo:Ljava/lang/String; = "is_safe_driver_share"

.field public static final O000Ooo:Ljava/lang/String; = "vincode_three_min"

.field public static final O000Ooo0:Ljava/lang/String; = "is_wx_share_status"

.field public static final O000OooO:Ljava/lang/String; = "notifation_msg"

.field public static final O000Oooo:Ljava/lang/String; = "notifation_msg_type"

.field public static final O000o000:Ljava/lang/String; = ""

.field public static final O00O0Oo:Ljava/lang/String; = "vehicle_status_address_"

.field public static final O00oOoOo:Ljava/lang/String; = "is_first_maintain"

.field public static final O00oOooO:Ljava/lang/String; = "currentIndex"

.field public static final O00oOooo:Ljava/lang/String; = "default_linkman"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static O000000o(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/irdeto/securesdk/core/SSUtils;->_getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static O000000o(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/irdeto/securesdk/core/SSUtils;->_formatBookingId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O000000o()V
    .locals 0

    invoke-static {}, Lcom/irdeto/securesdk/core/SSUtils;->_clearUserStoreContext()V

    return-void
.end method

.method public static O000000o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/core/SSUtils;->_removeItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static O000000o(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/core/SSUtils;->_putInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static O000000o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/irdeto/securesdk/core/SSUtils;->_putLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static O000000o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/core/SSUtils;->_putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static O000000o(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/core/SSUtils;->_putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static O000000o(Ljava/lang/String;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/core/SSUtils;->_putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public static O00000Oo(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/core/SSUtils;->_getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static O00000Oo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/core/SSUtils;->_getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O00000Oo(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/core/SSUtils;->_getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static O00000Oo(Ljava/lang/String;[B)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/core/SSUtils;->_getByteArray(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static O00000o0(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/core/SSUtils;->_stringFromJNI(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native _clearUserStoreContext()V
.end method

.method private static native _formatBookingId(I)Ljava/lang/String;
.end method

.method private static native _getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private static native _getByteArray(Ljava/lang/String;[B)[B
.end method

.method private static native _getInt(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native _getLong(Ljava/lang/String;Ljava/lang/String;J)J
.end method

.method private static native _getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native _putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private static native _putByteArray(Ljava/lang/String;[B)V
.end method

.method private static native _putInt(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private static native _putLong(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method private static native _putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native _removeItem(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native _stringFromJNI(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method
