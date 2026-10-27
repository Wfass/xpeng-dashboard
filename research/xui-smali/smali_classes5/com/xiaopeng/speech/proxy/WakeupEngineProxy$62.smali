.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->getDialogSoundAreaStatus(II)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
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
        "Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

.field final synthetic val$screenId:I

.field final synthetic val$soundArea:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    .line 1061
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;->val$screenId:I

    iput p3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;->val$soundArea:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 2
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    .line 1065
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;->val$screenId:I

    iget v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;->val$soundArea:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->getDialogSoundAreaStatus(II)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1068
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object p1

    return-object p1
.end method
