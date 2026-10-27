.class Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;
.super Ljava/lang/Object;
.source "RecordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->asr(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/IRecordEngine;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;->this$0:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;->val$filePath:Ljava/lang/String;

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

    .line 66
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;->run(Lcom/xiaopeng/speech/coreapi/IRecordEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/xiaopeng/speech/coreapi/IRecordEngine;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;->val$token:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$3;->val$filePath:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/IRecordEngine;->asr(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
