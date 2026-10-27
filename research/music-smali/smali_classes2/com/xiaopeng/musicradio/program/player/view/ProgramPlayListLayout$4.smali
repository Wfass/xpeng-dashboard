.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$4;
.super Lcom/lcodecore/tkrefreshlayout/g;
.source "ProgramPlayListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$4;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 185
    invoke-super {p0, p1}, Lcom/lcodecore/tkrefreshlayout/g;->onRefresh(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$4;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->h()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$4;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$200(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Z)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$4;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$300(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(I)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$4;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$400(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Z)V

    :goto_0
    return-void
.end method
