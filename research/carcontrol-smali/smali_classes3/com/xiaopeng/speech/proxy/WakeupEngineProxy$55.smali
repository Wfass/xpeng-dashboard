.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$55;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->getSoundAreaStatus(I)Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

.field final synthetic val$soundArea:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;I)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$55;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$55;->val$soundArea:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 896
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$55;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    iget v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$55;->val$soundArea:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->getSoundAreaStatus(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
