.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;
.super Ljava/lang/Object;
.source "ProgramPlayListLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->onUpdateTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;->d:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;->a:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    iput p3, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;->b:I

    iput p4, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;->d:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;->a:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;->b:I

    iget v3, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$4000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V

    return-void
.end method
