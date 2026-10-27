.class Lcom/xiaopeng/speech/proxy/SubscriberProxy$2;
.super Ljava/lang/Object;
.source "SubscriberProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/SubscriberProxy;->unSubscribe(Lcom/xiaopeng/speech/coreapi/IEventObserver;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

.field final synthetic val$eventObserver:Lcom/xiaopeng/speech/coreapi/IEventObserver;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/SubscriberProxy;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$2;->this$0:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$2;->val$eventObserver:Lcom/xiaopeng/speech/coreapi/IEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/ISubscriber;)Ljava/lang/Object;
    .locals 1
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/ISubscriber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$2;->val$eventObserver:Lcom/xiaopeng/speech/coreapi/IEventObserver;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/ISubscriber;->unSubscribe(Lcom/xiaopeng/speech/coreapi/IEventObserver;)V

    .line 52
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

    .line 48
    check-cast p1, Lcom/xiaopeng/speech/coreapi/ISubscriber;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/SubscriberProxy$2;->run(Lcom/xiaopeng/speech/coreapi/ISubscriber;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
