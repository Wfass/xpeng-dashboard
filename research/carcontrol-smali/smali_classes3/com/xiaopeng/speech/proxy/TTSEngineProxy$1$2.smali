.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$2;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->received([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;[B)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$2;->this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$2;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$2;->this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    iget-object v0, v0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$000(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/proxy/ISpeakCallback;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$2;->val$data:[B

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/proxy/ISpeakCallback;->received([B)V

    goto :goto_0

    :cond_0
    return-void
.end method
