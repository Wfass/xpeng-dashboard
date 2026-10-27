.class Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;
.super Ljava/lang/Object;
.source "RecordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/RecordEngineProxy;->pcm2Amr(Ljava/lang/String;Ljava/lang/String;Z)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

.field final synthetic val$deleteFileAfterSuc:Z

.field final synthetic val$dstFileName:Ljava/lang/String;

.field final synthetic val$srcFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/RecordEngineProxy;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;->this$0:Lcom/xiaopeng/speech/proxy/RecordEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;->val$srcFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;->val$dstFileName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;->val$deleteFileAfterSuc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/IRecordEngine;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/IRecordEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;->val$srcFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;->val$dstFileName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;->val$deleteFileAfterSuc:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IRecordEngine;->pcm2Amr(Ljava/lang/String;Ljava/lang/String;Z)Z

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

    .line 77
    check-cast p1, Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/RecordEngineProxy$4;->run(Lcom/xiaopeng/speech/coreapi/IRecordEngine;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
