.class Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;
.super Ljava/lang/Object;
.source "MusicRecognizeHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->setListener(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->stop()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    .line 60
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
    .locals 1
    .param p1, "musicRecognizeEvent"    # Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->stop()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;->onRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onVolumeChanged(D)V
    .locals 1
    .param p1, "volume"    # D

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    .line 52
    return-void
.end method
