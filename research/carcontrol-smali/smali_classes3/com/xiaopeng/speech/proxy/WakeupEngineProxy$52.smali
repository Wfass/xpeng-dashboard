.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$byWho:Ljava/lang/String;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->val$binder:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->val$byWho:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->val$binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 727
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->val$byWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->val$reason:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->suspendDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->val$byWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->val$reason:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->suspendDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 723
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
