.class Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->beginning(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

.field final synthetic val$flag:Ljava/lang/String;

.field final synthetic val$ttsId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;->this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    iput-object p2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;->val$ttsId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;->this$1:Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;

    iget-object v0, v0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1;->this$0:Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    invoke-static {v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->access$000(Lcom/xiaopeng/speech/proxy/TTSEngineProxy;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;->val$ttsId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/proxy/ISpeakCallback;

    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;->val$ttsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/TTSEngineProxy$1$1;->val$flag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/ISpeakCallback;->beginning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
