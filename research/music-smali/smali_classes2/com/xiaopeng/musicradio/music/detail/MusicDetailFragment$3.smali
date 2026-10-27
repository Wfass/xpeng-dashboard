.class Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$3;
.super Ljava/lang/Object;
.source "MusicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 266
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$000(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    :cond_1
    return-void
.end method
