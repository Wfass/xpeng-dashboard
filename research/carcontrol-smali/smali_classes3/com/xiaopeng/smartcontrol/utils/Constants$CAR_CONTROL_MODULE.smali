.class public Lcom/xiaopeng/smartcontrol/utils/Constants$CAR_CONTROL_MODULE;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CAR_CONTROL_MODULE"
.end annotation


# static fields
.field public static final ACCOUNT_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.AccountManagerServer"

.field public static final ATL_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.AtlManagerServer"

.field public static final CAMERA_AUTH_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.CameraAuthManagerServer"

.field public static final CAR_BODY_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.CarBodyManagerServer"

.field public static final DRIVE_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.DriveControlManagerServer"

.field public static final HVAC_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.hvac.HvacManagerServer"

.field public static final LAMP_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.LampManagerServer"

.field public static final MIRROR_CONTROL_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.MirrorControlManagerServer"

.field public static final POWERCENTER_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.powercenter.PowerCenterManagerServer"

.field public static final SEAT_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.SeatManagerServer"

.field public static final SHOW_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.CarControlShowManagerServer"

.field public static final WINDOW_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.WindowControlManagerServer"

.field public static final XPILOT_IMPL:Ljava/lang/String; = "com.xiaopeng.smartcontrol.sdk.server.vehicle.XpilotManagerServer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
