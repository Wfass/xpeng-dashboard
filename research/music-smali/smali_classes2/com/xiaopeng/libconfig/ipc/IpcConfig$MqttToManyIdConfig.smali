.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$MqttToManyIdConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MqttToManyIdConfig"
.end annotation


# static fields
.field public static final IPC_MSG_AUTO_DRIVING_CONFIG_RES:I = 0x7d1

.field public static final IPC_MSG_CAR_LOC_PIC_FEEDBACK:I = 0x4e23

.field public static final IPC_MSG_V2X_CAR_STATE:I = 0x3ea

.field public static final IPC_MSG_V2X_CAR_STATE_FEEDBACK:I = 0x4e22

.field public static final IPC_MSG_V2X_COMMAND_CMD:I = 0x4e21

.field public static final IPC_MSG_V2X_GROUP_TOPIC:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
