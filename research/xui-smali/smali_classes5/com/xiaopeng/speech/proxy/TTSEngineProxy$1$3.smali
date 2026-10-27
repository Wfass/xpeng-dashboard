.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->end(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

.field final synthetic val$flag:Ljava/lang/String;

.field final synthetic val$status:I

.field final synthetic val$ttsId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->val$ttsId:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->val$status:I

    iput-object p4, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    iget-object v0, v0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$000(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->val$ttsId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/proxy/ISpeakCallback;

    .line 63
    .local v0, "speakCallback":Lcom/xiaopeng/speech/proxy/ISpeakCallback;
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->val$ttsId:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->val$status:I

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->val$flag:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/speech/proxy/ISpeakCallback;->end(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    iget-object v1, v1, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$000(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$3;->val$ttsId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    return-void
.end method
