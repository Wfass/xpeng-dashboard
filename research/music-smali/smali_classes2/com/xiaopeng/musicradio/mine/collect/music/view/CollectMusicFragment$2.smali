.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment$2;
.super Ljava/lang/Object;
.source "CollectMusicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;->access$000(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;->setMode(I)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
