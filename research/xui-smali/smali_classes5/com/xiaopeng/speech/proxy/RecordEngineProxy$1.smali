.class Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;
.super Ljava/lang/Object;
.source "RecordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->startRecord(Ljava/lang/String;II)V
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

.field final synthetic val$dstFilePath:Ljava/lang/String;

.field final synthetic val$eosTimeout:I

.field final synthetic val$maxLengthMs:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;->val$dstFilePath:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;->val$maxLengthMs:I

    iput p4, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;->val$eosTimeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IRecordEngine;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IRecordEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;->val$dstFilePath:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;->val$maxLengthMs:I

    iget v2, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;->val$eosTimeout:I

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IRecordEngine;->startRecord(Ljava/lang/String;II)V

    .line 48
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

    .line 44
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$1;->run(Lcom/xiaopeng/speech/coreapi/IRecordEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
