.class public final synthetic Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$-268LCc-sVnbIQBG_t8PWWSq4wk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$-268LCc-sVnbIQBG_t8PWWSq4wk;->f$0:Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$-268LCc-sVnbIQBG_t8PWWSq4wk;->f$0:Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->lambda$setAppId$1$IpcServerImpl()V

    return-void
.end method
