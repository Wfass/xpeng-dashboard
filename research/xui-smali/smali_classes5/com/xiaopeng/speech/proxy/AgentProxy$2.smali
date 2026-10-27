.class Lcom/xiaopeng/speech/proxy/AgentProxy$2;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AgentProxy;->sendTextWithSoundArea(Ljava/lang/String;I)V
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

.field final synthetic val$soundArea:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/AgentProxy;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$2;->this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$2;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$2;->val$soundArea:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$2;->val$text:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$2;->val$soundArea:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent;->sendTextWithSoundArea(Ljava/lang/String;I)V

    .line 63
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

    .line 59
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$2;->run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
