.class Lcom/xiaopeng/speech/proxy/ASREngineProxy$1;
.super Ljava/lang/Object;
.source "ASREngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/ASREngineProxy;->setASRInterruptEnabled(Z)V
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

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/ASREngineProxy;Z)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    iput-boolean p2, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IASREngine;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    iget-boolean v0, p0, Lcom/xiaopeng/speech/proxy/ASREngineProxy$1;->val$enable:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/IASREngine;->setASRInterruptEnabled(Z)V

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

    .line 41
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IASREngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/ASREngineProxy$1;->run(Lcom/xiaopeng/speech/coreapi/IASREngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
