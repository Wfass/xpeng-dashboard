.class Lcom/xiaopeng/speech/proxy/SubscriberProxy$1;
.super Ljava/lang/Object;
.source "SubscriberProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/SubscriberProxy;->subscribe([Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V
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

.field final synthetic val$command:[Ljava/lang/String;

.field final synthetic val$eventObserver:Lcom/xiaopeng/speech/coreapi/IEventObserver;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/SubscriberProxy;[Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/SubscriberProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$1;->val$command:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$1;->val$eventObserver:Lcom/xiaopeng/speech/coreapi/IEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/ISubscriber;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/ISubscriber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$1;->val$command:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/SubscriberProxy$1;->val$eventObserver:Lcom/xiaopeng/speech/coreapi/IEventObserver;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/ISubscriber;->subscribe([Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V

    .line 41
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

    .line 37
    check-cast p1, Lcom/xiaopeng/speech/coreapi/ISubscriber;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/SubscriberProxy$1;->run(Lcom/xiaopeng/speech/coreapi/ISubscriber;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
