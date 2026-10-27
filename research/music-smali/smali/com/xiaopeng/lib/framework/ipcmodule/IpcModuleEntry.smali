.class public Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;
.super Ljava/lang/Object;
.source "IpcModuleEntry.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/module/IModuleEntry;


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mModuleServiceProxy:Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 24
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    if-ne p1, v0, :cond_2

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mModuleServiceProxy:Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    if-nez p1, :cond_1

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mModuleServiceProxy:Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mModuleServiceProxy:Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    .line 30
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 32
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mModuleServiceProxy:Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
