.class public Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;
.super Ljava/lang/Object;
.source "IpcServiceProxy.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->getInstance()Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->init(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 22
    return-void
.end method

.method public varargs sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->getInstance()Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V

    .line 27
    return-void
.end method
