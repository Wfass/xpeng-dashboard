.class Lcom/xiaopeng/speech/proxy/SubscriberProxy$3;
.super Ljava/lang/Object;
.source "SubscriberProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/SubscriberProxy;->isSubscribed(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/ISubscriber;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/SubscriberProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$3;->this$0:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$3;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/ISubscriber;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/ISubscriber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$3;->val$event:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/ISubscriber;->isSubscribed(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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
    check-cast p1, Lcom/xiaopeng/speech/coreapi/ISubscriber;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/SubscriberProxy$3;->run(Lcom/xiaopeng/speech/coreapi/ISubscriber;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
