.class Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$2;
.super Ljava/lang/Object;
.source "MusicRecognizeHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->findSongCover(Ljava/lang/String;)V
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

    .line 131
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "urlLink"    # Ljava/lang/String;

    .line 134
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->access$100(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$2;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;->onFindCoverEvent(Ljava/lang/String;)V

    .line 141
    :cond_2
    return-void
.end method
