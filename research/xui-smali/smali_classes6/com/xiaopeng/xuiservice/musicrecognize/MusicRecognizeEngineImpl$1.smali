.class Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;
.super Ljava/lang/Object;
.source "MusicRecognizeEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->access$002(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;Z)Z

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->access$100(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->access$100(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;

    move-result-object v0

    const-string v1, "TimeOut"

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;->onFail(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method
