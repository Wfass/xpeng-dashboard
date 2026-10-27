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
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "aClass"    # Ljava/lang/Class;

    .line 24
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    if-ne p1, v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mModuleServiceProxy:Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    if-nez v0, :cond_1

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mModuleServiceProxy:Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mModuleServiceProxy:Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    .line 30
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 32
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;->mModuleServiceProxy:Lcom/xiaopeng/lib/framework/ipcmodule/proxy/IpcServiceProxy;

    return-object v0

    .line 34
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
