.class Lcom/xiaopeng/speech/proxy/ASREngineProxy$5;
.super Ljava/lang/Object;
.source "ASREngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/ASREngineProxy;->startListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/IASREngine;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/ASREngineProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy$5;->this$0:Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IASREngine;)Ljava/lang/Object;
    .locals 1
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IASREngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IASREngine;->startListen()V

    .line 87
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

    .line 83
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IASREngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$5;->run(Lcom/xiaopeng/speech/coreapi/IASREngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
