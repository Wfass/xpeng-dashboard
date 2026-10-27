.class public Lcom/xiaopeng/lib/utils/config/RemoteControlConfig$RemoteControlCode;
.super Ljava/lang/Object;
.source "RemoteControlConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/config/RemoteControlConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteControlCode"
.end annotation


# static fields
.field public static final REMOTE_CONTROL_CAR_FUNCTION_UNSUPPORT:I = 0x8

.field public static final REMOTE_CONTROL_CAR_IN_AWAKE:I = 0x4

.field public static final REMOTE_CONTROL_CAR_MCU_ERROR:I = 0x5

.field public static final REMOTE_CONTROL_CAR_NO_PERMISSION:I = 0x3

.field public static final REMOTE_CONTROL_CAR_OFFLINE:I = 0x1

.field public static final REMOTE_CONTROL_CAR_POWER_OFF_FAIL:I = 0x7

.field public static final REMOTE_CONTROL_CAR_POWER_ON_FAIL:I = 0x6

.field public static final REMOTE_CONTROL_CAR_SLEEP:I = 0x2

.field public static final REMOTE_CONTROL_SUCCESS:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
