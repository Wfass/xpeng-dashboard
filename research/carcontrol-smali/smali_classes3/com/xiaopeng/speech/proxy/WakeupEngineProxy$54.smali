.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V
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

.field final synthetic val$handleCache:Z

.field final synthetic val$info:Ljava/lang/String;

.field final synthetic val$needMic:Z

.field final synthetic val$notifyType:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$binder:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$byWho:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$info:Ljava/lang/String;

    iput p5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$notifyType:I

    iput-boolean p6, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$needMic:Z

    iput-boolean p7, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$handleCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;
    .locals 8

    .line 848
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$binder:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 849
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$byWho:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$info:Ljava/lang/String;

    iget v6, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$notifyType:I

    iget-boolean v7, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$needMic:Z

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 851
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$byWho:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$info:Ljava/lang/String;

    iget v4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$notifyType:I

    iget-boolean v5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$needMic:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 854
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 856
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$handleCache:Z

    if-eqz v0, :cond_2

    .line 857
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$binder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$byWho:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$info:Ljava/lang/String;

    iget v5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$notifyType:I

    iget-boolean v6, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->val$needMic:Z

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->access$200(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
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

    .line 844
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
