.class Lcom/xiaopeng/speech/proxy/AppMgrProxy$3;
.super Ljava/lang/Object;
.source "AppMgrProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/AppMgrProxy;->getAppNameByPackage(Ljava/lang/String;)[Ljava/lang/String;
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
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/AppMgrProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$3;->this$0:Lcom/xiaopeng/speech/proxy/AppMgrProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$3;->val$packageName:Ljava/lang/String;

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

    .line 63
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IAppMgr;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/AppMgrProxy$3;->run(Lcom/xiaopeng/speech/coreapi/IAppMgr;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/xiaopeng/speech/coreapi/IAppMgr;)Ljava/util/List;
    .locals 1
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IAppMgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/speech/coreapi/IAppMgr;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/AppMgrProxy$3;->val$packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/IAppMgr;->getAppNameByPackage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
