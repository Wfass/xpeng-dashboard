.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
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

.field final synthetic val$notifyType:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$binder:Landroid/os/IBinder;

    iput p3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$type:I

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$byWho:Ljava/lang/String;

    iput p5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$notifyType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;
    .locals 4

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 668
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$type:I

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$byWho:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$notifyType:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->enableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    goto :goto_0

    .line 670
    :cond_0
    iget v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$type:I

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$byWho:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$notifyType:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->enableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 673
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 675
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$binder:Landroid/os/IBinder;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    iget p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$type:I

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$byWho:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->val$notifyType:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->access$100(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;I)V

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

    .line 663
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
