.class Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$5;
.super Ljava/lang/Object;
.source "SessionMediaController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 951
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 1
    .param p1, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 969
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$1402(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 970
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$1300(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 971
    return-void
.end method

.method public onMediaInfoChanged(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 955
    return-void
.end method

.method public onPlayStatusChanged(I)V
    .locals 0
    .param p1, "newStatus"    # I

    .line 960
    return-void
.end method

.method public onPositionChanged(JJ)V
    .locals 0
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .line 965
    return-void
.end method
