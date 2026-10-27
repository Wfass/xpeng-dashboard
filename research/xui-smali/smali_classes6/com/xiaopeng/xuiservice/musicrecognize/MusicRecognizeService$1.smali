.class Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "MusicRecognizeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->setListener(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;)V

    .line 38
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;->access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->setListener(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;)V

    .line 44
    return-void
.end method
