.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$7;
.super Ljava/lang/Object;
.source "CollectMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$2300(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->g()Ljava/util/List;

    move-result-object v1

    .line 244
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 245
    new-instance p1, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$600(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)I

    move-result v3

    const/16 v4, 0x32

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$700(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)I

    move-result v5

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Laxu;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;-><init>(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IIILjava/lang/String;)V

    invoke-static {p1}, Laxu;->a(Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;)V

    :cond_0
    return-void
.end method
