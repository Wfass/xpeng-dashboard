.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;
.super Lcom/xiaopeng/speech/coreapi/ITTSCallback$Stub;
.source "TTSEngineProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/ITTSCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public beginning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ttsId"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$100(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Lcom/xiaopeng/speech/common/util/WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public end(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "ttsId"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "flag"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$100(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Lcom/xiaopeng/speech/common/util/WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$100(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Lcom/xiaopeng/speech/common/util/WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$4;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public received([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$100(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Lcom/xiaopeng/speech/common/util/WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$2;-><init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;[B)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method
