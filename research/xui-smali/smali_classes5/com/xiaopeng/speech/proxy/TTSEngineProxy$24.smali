.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$24;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->addTSSListener()V
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


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    .line 475
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$24;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

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

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$24;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$200(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Lcom/xiaopeng/speech/coreapi/ITTSCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine;->addListener(Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$24;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$302(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
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

    .line 485
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

    .line 475
    check-cast p1, Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$24;->run(Lcom/xiaopeng/speech/coreapi/ITTSEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
