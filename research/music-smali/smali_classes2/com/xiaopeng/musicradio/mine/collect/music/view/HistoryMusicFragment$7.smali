.class Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$7;
.super Ljava/lang/Object;
.source "HistoryMusicFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setListener()V
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

    .line 260
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setMode(I)V

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$1500(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$100(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    .line 271
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$7;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$1600(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-static {p1, v0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
