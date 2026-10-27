.class Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$2;
.super Ljava/lang/Object;
.source "HotwordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->injectHotWords(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/IHotwordEngine;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

.field final synthetic val$byWho:Ljava/lang/String;

.field final synthetic val$words:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$2;->this$0:Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$2;->val$words:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$2;->val$byWho:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IHotwordEngine;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$2;->val$words:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$2;->val$byWho:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/IHotwordEngine;->injectHotWords(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 89
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$2;->run(Lcom/xiaopeng/speech/coreapi/IHotwordEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
