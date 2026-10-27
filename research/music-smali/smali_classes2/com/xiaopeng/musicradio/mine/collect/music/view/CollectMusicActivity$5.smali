.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$5;
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

    .line 221
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$5;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$5;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$2000(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$5;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$2100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Laty;

    iget-object p1, p1, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setMode(I)V

    return-void
.end method
