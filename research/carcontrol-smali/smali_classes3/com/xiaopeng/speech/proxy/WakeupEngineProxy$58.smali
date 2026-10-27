.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V
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

.field final synthetic val$removeAll:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 0

    .line 997
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$binder:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$byWho:Ljava/lang/String;

    iput p4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$notifyType:I

    iput-boolean p5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$removeAll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;
    .locals 4

    .line 1001
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 1002
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$byWho:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$notifyType:I

    iget-boolean v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$removeAll:Z

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$byWho:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$notifyType:I

    iget-boolean v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$removeAll:Z

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1009
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$binder:Landroid/os/IBinder;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    iget p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$notifyType:I

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$byWho:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->val$removeAll:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->access$500(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;Z)V

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

    .line 997
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
