.class Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;
.super Ljava/lang/Object;
.source "AppMgrProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AppMgrProxy;->registerApp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/IAppMgr;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AppMgrProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IAppMgr;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->access$000(Lcom/xiaopeng/speech/proxy/AppMgrProxy;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->val$appName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->access$000(Lcom/xiaopeng/speech/proxy/AppMgrProxy;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->val$appName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->val$packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->val$appName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAppMgr;->registerApp(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 39
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAppMgr;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AppMgrProxy$1;->run(Lcom/xiaopeng/speech/coreapi/IAppMgr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
