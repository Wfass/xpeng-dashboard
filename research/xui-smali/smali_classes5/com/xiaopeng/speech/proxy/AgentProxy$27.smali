.class Lcom/xiaopeng/speech/proxy/AgentProxy$27;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AgentProxy;->sendSceneData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$appVersion:Ljava/lang/String;

.field final synthetic val$sceneData:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/AgentProxy;

    .line 362
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$appName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$appVersion:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$sceneData:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$type:Ljava/lang/String;

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

    .line 362
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/String;
    .locals 6
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$sceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$appName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$appVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$sceneData:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$27;->val$type:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IAgent;->sendSceneData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    return-object v0
.end method
