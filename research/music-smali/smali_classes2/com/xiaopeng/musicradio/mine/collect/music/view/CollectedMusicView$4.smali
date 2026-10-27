.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$4;
.super Ljava/lang/Object;
.source "CollectedMusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string p1, "CollectedMusicView"

    const-string v0, "tvTitleBtn onClick: ========"

    .line 155
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Latr;->b(I)V

    .line 157
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Latr;->c(I)V

    .line 158
    invoke-static {}, Latc;->a()Latc;

    move-result-object p1

    invoke-virtual {p1}, Latc;->b()Ljava/util/List;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 160
    new-instance p1, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->access$100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)I

    move-result v3

    const/16 v4, 0x32

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->access$200(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)I

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
