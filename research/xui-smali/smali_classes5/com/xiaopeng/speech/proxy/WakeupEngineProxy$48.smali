.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
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

.field final synthetic val$info:Ljava/lang/String;

.field final synthetic val$notifyType:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    .line 642
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$binder:Landroid/os/IBinder;

    iput p3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$type:I

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$byWho:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$info:Ljava/lang/String;

    iput p6, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$notifyType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;
    .locals 7
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 647
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$type:I

    iget-object v4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$byWho:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$info:Ljava/lang/String;

    iget v6, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$notifyType:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->disableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$binder:Landroid/os/IBinder;

    iget v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$type:I

    iget-object v4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$byWho:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$info:Ljava/lang/String;

    iget v6, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$notifyType:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->disableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_0
    goto :goto_1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 655
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$binder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$binder:Landroid/os/IBinder;

    goto :goto_2

    :goto_3
    iget v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$type:I

    iget-object v4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$byWho:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$info:Ljava/lang/String;

    iget v6, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->val$notifyType:I

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->access$000(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 656
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

    .line 642
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
