.class Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;
.super Ljava/lang/Object;
.source "MusicHistoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/widget/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

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
    instance-of v0, p1, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    if-eqz v0, :cond_0

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->access$100(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->setPosition(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->access$302(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;)Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->access$300(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->access$100(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->setPosition(I)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->access$300(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->access$200(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)Lbya;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->setRecyclerState(Lbya;)V

    return-void
.end method
