.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$AccountConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountConfig"
.end annotation


# static fields
.field public static final IPC_MSG_ID_ACCOUNT_CHANGE_ACCOUNT:I = 0x1fbd6

.field public static final IPC_MSG_ID_ACCOUNT_COLLECT_CODE:I = 0x1fbd8

.field public static final IPC_MSG_ID_ACCOUNT_FACE_BIND:I = 0x1fbd5

.field public static final IPC_MSG_ID_ACCOUNT_ONLINE_ACCOUNT:I = 0x1fbd7

.field public static final IPC_MSG_ID_ACCOUNT_QR_LOGIN:I = 0x1fbd1

.field public static final IPC_MSG_ID_ACCOUNT_UPDATE_INFO:I = 0x1fbd3

.field public static final IPC_MSG_ID_ACCOUNT_UPDATE_PERMISSION:I = 0x1fbd4

.field public static final IPC_MSG_ID_ACCOUNT_USER_SWITCH:I = 0x1fbd2

.field public static final IPC_MSG_ID_CONTROL_CANCEL_MOVE_SEAT:I = 0x222e1

.field public static final IPC_MSG_ID_SYNC_ANIM_DONE:I = 0x1fbd9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
