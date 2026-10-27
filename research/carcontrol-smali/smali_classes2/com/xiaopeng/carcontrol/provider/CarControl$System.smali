.class public final Lcom/xiaopeng/carcontrol/provider/CarControl$System;
.super Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueTable;
.source "CarControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/provider/CarControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final AVAILABLE_DISTANCE:Ljava/lang/String; = "available_distance"

.field public static final BATTERY_PERCENT:Ljava/lang/String; = "battery_percent"

.field public static final CAR_CONTROL_READY:Ljava/lang/String; = "cc_ready"

.field public static final CENTRAL_LOCK:Ljava/lang/String; = "central_lock"

.field public static final CENTRAL_LOCK_SET:Ljava/lang/String; = "central_lock_set"

.field public static final CHARGE_STATUS:Ljava/lang/String; = "charge_status"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DRIVE_MODE:Ljava/lang/String; = "drive_mode"

.field public static final DRIVE_MODE_SET:Ljava/lang/String; = "drive_mode_set"

.field public static final DRV_OCCUPIED:Ljava/lang/String; = "drv_occupied"

.field public static final HVAC_AIR_PURGE_MODE:Ljava/lang/String; = "hvac_air_purge_mode"

.field public static final HVAC_AUTO:Ljava/lang/String; = "hvac_auto"

.field public static final HVAC_BACK_DEFROST:Ljava/lang/String; = "hvac_back_defrost"

.field public static final HVAC_BACK_DEFROST_SET:Ljava/lang/String; = "hvac_back_defrost_set"

.field public static final HVAC_BLOWER_CTRL_TYPE:Ljava/lang/String; = "hvac_blower_ctrl_type"

.field public static final HVAC_DRV_SYNC:Ljava/lang/String; = "hvac_drv_sync"

.field public static final HVAC_DRV_SYNC_SET:Ljava/lang/String; = "hvac_drv_sync_set"

.field public static final HVAC_DRV_TEMP:Ljava/lang/String; = "hvac_drv_temp"

.field public static final HVAC_DRV_TEMP_SET:Ljava/lang/String; = "hvac_drv_temp_set"

.field public static final HVAC_DRV_TEMP_STEP_SET:Ljava/lang/String; = "hvac_drv_temp_step_set"

.field public static final HVAC_FRONT_DEFROST:Ljava/lang/String; = "hvac_front_defrost"

.field public static final HVAC_FRONT_DEFROST_SET:Ljava/lang/String; = "hvac_front_defrost_set"

.field public static final HVAC_OUT_TEMP:Ljava/lang/String; = "hvac_out_temp"

.field public static final HVAC_PM25:Ljava/lang/String; = "hvac_pm25"

.field public static final HVAC_POWER:Ljava/lang/String; = "hvac_power"

.field public static final HVAC_POWER_SET:Ljava/lang/String; = "hvac_power_set"

.field public static final HVAC_PSN_SYNC:Ljava/lang/String; = "hvac_psn_sync"

.field public static final HVAC_PSN_SYNC_SET:Ljava/lang/String; = "hvac_psn_sync_set"

.field public static final HVAC_PSN_TEMP:Ljava/lang/String; = "hvac_psn_temp"

.field public static final HVAC_PSN_TEMP_SET:Ljava/lang/String; = "hvac_psn_temp_set"

.field public static final HVAC_PSN_TEMP_STEP_SET:Ljava/lang/String; = "hvac_psn_temp_step_set"

.field public static final HVAC_WIND_LEVEL:Ljava/lang/String; = "hvac_wind_level"

.field public static final HVAC_WIND_MODE_COLOR:Ljava/lang/String; = "hvac_wind_mode_color"

.field public static final PSN_OCCUPIED:Ljava/lang/String; = "psn_occupied"

.field private static final sNameValueCache:Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.xiaopeng.carcontrol/system"

    .line 61
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    new-instance v1, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;

    const-string v2, "GET_system"

    const-string v3, "PUT_system"

    invoke-direct {v1, v0, v2, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->sNameValueCache:Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueTable;-><init>()V

    return-void
.end method

.method public static getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "def"
        }
    .end annotation

    .line 134
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    return p2
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cr",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 125
    :catch_0
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "def"
        }
    .end annotation

    .line 112
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cr",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 103
    :catch_0
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "def"
        }
    .end annotation

    .line 90
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolver",
            "name"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->sNameValueCache:Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "value"
        }
    .end annotation

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "value"
        }
    .end annotation

    .line 130
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cr",
            "name",
            "value"
        }
    .end annotation

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolver",
            "name",
            "value"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->sNameValueCache:Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
