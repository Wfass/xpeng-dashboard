.class Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;
.super Ljava/lang/Object;
.source "MediaControllerManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    .line 241
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onPlayStatusChanged(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "newStatus"    # I

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onPlayStatusChanged(II)V

    .line 254
    :cond_0
    return-void
.end method

.method public onPositionChanged(IJJ)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "position"    # J
    .param p4, "duration"    # J

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onPositionChanged(IJJ)V

    .line 261
    :cond_0
    return-void
.end method
