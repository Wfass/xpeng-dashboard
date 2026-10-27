.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$BTPhoneConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BTPhoneConfig"
.end annotation


# static fields
.field public static final IPC_MSG_AI_CMD_ANSWER_CALL:I = 0x3ea

.field public static final IPC_MSG_AI_CMD_HAND_UP:I = 0x3eb

.field public static final IPC_MSG_ANWSER_CALL:I = 0x3ee

.field public static final IPC_MSG_CALL_OVER:I = 0x3ed

.field public static final IPC_MSG_DIAL_NUMBER:I = 0x3ef

.field public static final IPC_MSG_ON_CALL_IN:I = 0x3ec

.field public static final PHONE_CODE:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
