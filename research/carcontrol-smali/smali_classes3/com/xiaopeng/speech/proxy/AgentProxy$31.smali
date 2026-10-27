.class Lcom/xiaopeng/speech/proxy/AgentProxy$31;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntentWithBinder(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$intent:Ljava/lang/String;

.field final synthetic val$skill:Ljava/lang/String;

.field final synthetic val$slots:Ljava/lang/String;

.field final synthetic val$task:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AgentProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->this$0:Lcom/xiaopeng/speech/proxy/AgentProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$binder:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$skill:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$task:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$intent:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$slots:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$binder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$skill:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$task:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$intent:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->val$slots:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IAgent;->triggerIntentWithBinder(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 405
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAgent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy$31;->run(Lcom/xiaopeng/speech/coreapi/IAgent;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
