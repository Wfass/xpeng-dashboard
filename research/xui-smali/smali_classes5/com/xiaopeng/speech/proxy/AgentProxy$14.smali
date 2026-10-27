.class Lcom/xiaopeng/speech/proxy/AgentProxy$14;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AgentProxy;->setDefaultWelcomeEnabled(Z)V
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

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/AgentProxy;

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$14;->this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

    iput-boolean p2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$14;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;
    .locals 1
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$14;->val$enable:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/IAgent;->setDefaultWelcomeEnabled(Z)V

    .line 209
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

    .line 205
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$14;->run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
