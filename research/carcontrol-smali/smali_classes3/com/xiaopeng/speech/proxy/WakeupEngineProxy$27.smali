.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setWheelWakeupEnabled(Landroid/os/IBinder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/IWakeupEngine;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Z)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;->val$binder:Landroid/os/IBinder;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;->val$binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 362
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;->val$state:Z

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->setWheelWakeupEnabled(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 364
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;->val$state:Z

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->setWheelWakeupEnabled(Landroid/os/IBinder;Z)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
