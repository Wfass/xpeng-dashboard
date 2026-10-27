.class Lcom/xiaopeng/speech/proxy/ASREngineProxy$2;
.super Ljava/lang/Object;
.source "ASREngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/ASREngineProxy;->isEnableASRInterrupt()Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/ASREngineProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy$2;->this$0:Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IASREngine;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IASREngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IASREngine;->isEnableASRInterrupt()Z

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

    .line 52
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IASREngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$2;->run(Lcom/xiaopeng/speech/coreapi/IASREngine;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
