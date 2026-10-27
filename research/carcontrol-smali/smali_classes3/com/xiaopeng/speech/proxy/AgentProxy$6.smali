.class Lcom/xiaopeng/speech/proxy/AgentProxy$6;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$intent:Ljava/lang/String;

.field final synthetic val$skill:Ljava/lang/String;

.field final synthetic val$slots:Ljava/lang/String;

.field final synthetic val$task:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->val$skill:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->val$task:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->val$intent:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->val$slots:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->val$skill:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->val$task:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->val$intent:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->val$slots:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IAgent;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 103
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$6;->run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
