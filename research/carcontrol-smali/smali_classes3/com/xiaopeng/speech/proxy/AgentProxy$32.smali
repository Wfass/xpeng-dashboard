.class Lcom/xiaopeng/speech/proxy/AgentProxy$32;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AgentProxy;->setConfigDataWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

.field final synthetic val$callback:Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$32;->this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$32;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$32;->val$data:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$32;->val$callback:Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$32;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$32;->val$data:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$32;->val$callback:Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IAgent;->setConfigDataWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;)V

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

    .line 416
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$32;->run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
