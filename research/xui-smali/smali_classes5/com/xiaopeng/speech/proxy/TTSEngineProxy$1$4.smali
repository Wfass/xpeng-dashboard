.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$4;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->error(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$4;->this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$4;->val$error:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$4;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$4;->this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    iget-object v0, v0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$000(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/proxy/ISpeakCallback;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/proxy/ISpeakCallback;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$4;->val$error:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$4;->val$flag:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/ISpeakCallback;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method
