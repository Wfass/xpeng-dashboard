.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->setSingleTTS(ZLandroid/os/IBinder;)V
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

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    .line 423
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;->val$binder:Landroid/os/IBinder;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;->val$state:Z

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

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;->val$binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 428
    iget-boolean v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;->val$state:Z

    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/ITTSEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/ITTSEngine;->setSingleTTS(ZLandroid/os/IBinder;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;->val$state:Z

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;->val$binder:Landroid/os/IBinder;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/speech/coreapi/ITTSEngine;->setSingleTTS(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    goto :goto_1

    .line 432
    :catch_0
    move-exception v0

    .line 433
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

    .line 435
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
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

    .line 423
    check-cast p1, Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$21;->run(Lcom/xiaopeng/speech/coreapi/ITTSEngine;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
