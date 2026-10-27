.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableFastWakeEnhance(Landroid/os/IBinder;)V
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


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    .line 519
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;
    .locals 1
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IWakeupEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;->val$binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 523
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->enableFastWakeEnhance(Landroid/os/IBinder;)V

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;->val$binder:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->enableFastWakeEnhance(Landroid/os/IBinder;)V

    .line 527
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
