.class Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$3;
.super Ljava/lang/Object;
.source "HistoryMusicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$000(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$100(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setMode(I)V

    :goto_0
    return-void
.end method
