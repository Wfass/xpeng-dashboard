.class Lcom/xiaopeng/speech/actor/ActorBridge$1;
.super Ljava/lang/Object;
.source "ActorBridge.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/IActorBridge;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/actor/ActorBridge;

.field final synthetic val$actor:Lcom/xiaopeng/speech/actor/Actor;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/actor/ActorBridge;Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/actor/ActorBridge;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/speech/actor/ActorBridge$1;->this$0:Lcom/xiaopeng/speech/actor/ActorBridge;

    iput-object p2, p0, Lcom/xiaopeng/speech/actor/ActorBridge$1;->val$actor:Lcom/xiaopeng/speech/actor/Actor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/IActorBridge;)Ljava/lang/Object;
    .locals 1
    .param p1, "proxy"    # Lcom/xiaopeng/speech/IActorBridge;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/ActorBridge$1;->val$actor:Lcom/xiaopeng/speech/actor/Actor;

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/IActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 56
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

    .line 52
    check-cast p1, Lcom/xiaopeng/speech/IActorBridge;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/actor/ActorBridge$1;->run(Lcom/xiaopeng/speech/IActorBridge;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
