.class Lcom/xiaopeng/speech/proxy/RecordEngineProxy$2;
.super Ljava/lang/Object;
.source "RecordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->stopRecord()V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$2;->this$0:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IRecordEngine;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IRecordEngine;->stopRecord()V

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

    .line 55
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$2;->run(Lcom/xiaopeng/speech/coreapi/IRecordEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
