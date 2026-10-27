.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$CarControlConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarControlConfig"
.end annotation


# static fields
.field public static final IPC_FACE_RECOGNITION:I = 0x3e85

.field public static final IPC_HEAD_LAMP_STATE:I = 0x3e86

.field public static final IPC_LEARNING_MORE:I = 0x3e84

.field public static final REMOTE_COMMAND_AUTOPILOT:I = 0x3e82

.field public static final REMOTE_COMMAND_DVR:I = 0x3e80

.field public static final REMOTE_COMMAND_LAUNCH:I = 0x3e83

.field public static final REMOTE_COMMAND_MEDIA_SOURCE:I = 0x3e81


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
