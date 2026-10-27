.class Lcom/xiaopeng/speech/proxy/AgentProxy$29;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AgentProxy;->uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V
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

.field final synthetic val$contents:Ljava/lang/String;

.field final synthetic val$operation:I

.field final synthetic val$vocabName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$29;->this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$29;->val$vocabName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$29;->val$contents:Ljava/lang/String;

    iput p4, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$29;->val$operation:I

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

    .line 383
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$29;->run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$29;->val$vocabName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$29;->val$contents:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$29;->val$operation:I

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IAgent;->uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1
.end method
