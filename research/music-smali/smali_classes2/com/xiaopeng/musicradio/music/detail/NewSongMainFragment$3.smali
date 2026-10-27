.class Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$3;
.super Ljava/lang/Object;
.source "NewSongMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$600(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    .line 132
    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$600(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$700(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->e()V

    :cond_1
    return-void
.end method
