.class Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$1;
.super Ljava/lang/Object;
.source "MusicDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->findView()V
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

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->d()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->e()V

    return-void
.end method
