.class Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$2;
.super Ljava/lang/Object;
.source "MusicCollectLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/widget/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    const-string v0, "TAG"

    const-string v1, "setView: "

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->access$302(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->access$300(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->access$100(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->setPosition(I)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->access$300(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->access$200(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)Lbya;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->setRecyclerState(Lbya;)V

    return-void
.end method
