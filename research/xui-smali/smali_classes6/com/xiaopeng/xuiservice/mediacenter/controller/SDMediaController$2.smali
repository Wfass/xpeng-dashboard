.class Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;
.super Ljava/lang/Object;
.source "SDMediaController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 2
    .param p1, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 251
    :cond_0
    return-void
.end method

.method public onMediaInfoChanged(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 2
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 232
    :cond_0
    return-void
.end method

.method public onPlayStatusChanged(I)V
    .locals 1
    .param p1, "newStatus"    # I

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$300(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;I)V

    .line 237
    return-void
.end method

.method public onPositionChanged(JJ)V
    .locals 7
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)I

    move-result v2

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onPositionChanged(IJJ)V

    .line 244
    :cond_0
    return-void
.end method
