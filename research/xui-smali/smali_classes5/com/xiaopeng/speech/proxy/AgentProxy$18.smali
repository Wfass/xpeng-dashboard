.class Lcom/xiaopeng/speech/proxy/AgentProxy$18;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AgentProxy;->setUseWheelVoiceButton(Landroid/os/IBinder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/IAgent;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$useVoiceButton:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/AgentProxy;

    .line 252
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$18;->this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$18;->val$binder:Landroid/os/IBinder;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$18;->val$useVoiceButton:Z

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

    .line 252
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$18;->run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/String;
    .locals 2
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$18;->val$binder:Landroid/os/IBinder;

    iget-boolean v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$18;->val$useVoiceButton:Z

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent;->setUseWheelVoiceButton(Landroid/os/IBinder;Z)V

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method
