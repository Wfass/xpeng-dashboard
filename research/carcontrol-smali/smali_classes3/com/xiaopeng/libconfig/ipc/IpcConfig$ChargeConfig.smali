.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$ChargeConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChargeConfig"
.end annotation


# static fields
.field public static final CHARGE_CONNECTOR_LOCK_STATUS:I = 0x7531

.field public static final IPC_ID_HIDE_CHARGE_UI:I = 0x7533

.field public static final IPC_ID_HIGH_SPEED_CHARGE:I = 0x7535

.field public static final IPC_ID_SHOW_CHARGE_SPOTS_LIST:I = 0x7532

.field public static final IPC_ID_SWITCH_DRIVE_MODE:I = 0x7534


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
