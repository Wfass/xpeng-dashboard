.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$MusicServiceConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicServiceConfig"
.end annotation


# static fields
.field public static final IPC_COMMAND_ID_MUSIC_CONTROL:I = 0x11170

.field public static final IPC_OPEN_MANUAL_SEARCH:I = 0x11171


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
