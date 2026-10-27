.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$17;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->setSoloModeByChannel(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/coreapi/ITTSEngine;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

.field final synthetic val$channel:I

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    .line 363
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$17;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    iput p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$17;->val$channel:I

    iput-boolean p3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$17;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/coreapi/ITTSEngine;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Lcom/xiaopeng/speech/coreapi/ITTSEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$17;->val$channel:I

    iget-boolean v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$17;->val$enable:Z

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/ITTSEngine;->setSoloModeByChannel(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPC Excption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 371
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
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

    .line 363
    check-cast p1, Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$17;->run(Lcom/xiaopeng/speech/coreapi/ITTSEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
