.class Lcom/xiaopeng/speech/proxy/AppMgrProxy$4;
.super Ljava/lang/Object;
.source "AppMgrProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AppMgrProxy;->reRegisterApp()V
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


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AppMgrProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$4;->this$0:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IAppMgr;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IAppMgr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-string v0, "reRegisterApp..."

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$4;->this$0:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->access$000(Lcom/xiaopeng/speech/proxy/AppMgrProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$4;->this$0:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    invoke-static {v2}, Lcom/xiaopeng/speech/proxy/AppMgrProxy;->access$100(Lcom/xiaopeng/speech/proxy/AppMgrProxy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lcom/xiaopeng/speech/coreapi/IAppMgr;->registerApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v1    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 101
    :cond_0
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

    .line 94
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAppMgr;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AppMgrProxy$4;->run(Lcom/xiaopeng/speech/coreapi/IAppMgr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
