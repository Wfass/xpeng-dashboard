.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;
.super Ljava/lang/Object;
.source "CollectMusicActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;


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

    .line 202
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setMode(I)V

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$1600(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setMode(I)V

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$1700(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    .line 212
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$1800(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-static {p1, v0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
