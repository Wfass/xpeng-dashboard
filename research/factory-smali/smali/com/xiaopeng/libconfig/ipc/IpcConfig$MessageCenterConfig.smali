.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$MessageCenterConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageCenterConfig"
.end annotation


# static fields
.field public static final IPC_ID_APP_PUSH_MESSAGE:I = 0x2719

.field public static final IPC_ID_GET_MESSAGE_BOX_HISTORY_LIST:I = 0x2712

.field public static final IPC_ID_HAS_UNREAD_MESSAGE:I = 0x2715

.field public static final IPC_ID_MESSAGE_CHANNEL_PUSH_MESSAGE:I = 0x271a

.field public static final IPC_ID_MESSAGE_DELETE:I = 0x271d

.field public static final IPC_ID_MESSAGE_GET_CAR_STATE:I = 0x271c

.field public static final IPC_ID_MESSAGE_PUSH_TO_APP:I = 0x271b

.field public static final IPC_ID_PUSH_MESSAGE:I = 0x2716

.field public static final IPC_ID_READ_ALL_MESSAGE:I = 0x2714

.field public static final IPC_ID_READ_MESSAGE:I = 0x2713

.field public static final IPC_ID_RETURN_HAS_UNREAD_MESSAGE:I = 0x2718

.field public static final IPC_ID_RETURN_MESSAGE_BOX_HISTORY_LIST:I = 0x2717

.field public static final IPC_ID_SUBSCRIBE:I = 0x2710

.field public static final IPC_ID_UNSUBSCRIBE:I = 0x2711


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
