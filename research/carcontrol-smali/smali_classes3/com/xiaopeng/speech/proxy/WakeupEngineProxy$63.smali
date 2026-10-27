.class Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$63;
.super Ljava/lang/Object;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->getAllDialogSoundAreaStatus(I)[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
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
        "[",
        "Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;I)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$63;->this$0:Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    iput p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$63;->val$screenId:I

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

    .line 1076
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$63;->run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/xiaopeng/speech/coreapi/IWakeupEngine;)[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 1

    .line 1080
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$63;->val$screenId:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->getAllDialogSoundAreaStatus(I)[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1082
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
