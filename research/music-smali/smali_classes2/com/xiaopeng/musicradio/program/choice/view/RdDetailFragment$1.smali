.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$1;
.super Ljava/lang/Object;
.source "RdDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->d()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$100(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->e()V

    return-void
.end method
