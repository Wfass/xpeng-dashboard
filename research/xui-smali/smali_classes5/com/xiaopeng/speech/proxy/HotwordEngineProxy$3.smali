.class Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;
.super Ljava/lang/Object;
.source "HotwordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->injectHotWordsByBinder(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
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

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$byWho:Ljava/lang/String;

.field final synthetic val$words:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;->this$0:Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;->val$words:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;->val$byWho:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IHotwordEngine;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IHotwordEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;->val$words:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;->val$byWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;->val$binder:Landroid/os/IBinder;

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IHotwordEngine;->injectHotWordsByBinder(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 104
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

    .line 100
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy$3;->run(Lcom/xiaopeng/speech/coreapi/IHotwordEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
