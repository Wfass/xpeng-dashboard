.class public final synthetic Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$7vfHVuDxL7tEfOTvHdikP8Y0INU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$7vfHVuDxL7tEfOTvHdikP8Y0INU;->f$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$7vfHVuDxL7tEfOTvHdikP8Y0INU;->f$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;->lambda$initConnection$0$AppClient()V

    return-void
.end method
