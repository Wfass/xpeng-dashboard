.class Lcom/xiaopeng/speech/proxy/AgentProxy$19;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AgentProxy;->getRecommendData(Ljava/lang/String;)Ljava/lang/String;
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

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$19;->this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$19;->val$type:Ljava/lang/String;

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

    .line 277
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$19;->run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$19;->val$type:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/IAgent;->getRecommendData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
