.class Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$2;
.super Ljava/lang/Object;
.source "NewSongLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 152
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->access$000(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->c()V

    :cond_1
    return-void
.end method
