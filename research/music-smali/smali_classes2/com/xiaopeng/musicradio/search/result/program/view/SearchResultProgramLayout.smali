.class public Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;
.super Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;
.source "SearchResultProgramLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/result/program/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout<",
        "Lcom/xiaopeng/musicradio/search/result/program/view/a;",
        "Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProrgamLayoutPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/result/program/view/a;"
    }
.end annotation


# instance fields
.field private g:I

.field private i:Ljava/lang/String;

.field private j:Lbnr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;)Lbnr;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->d:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method private j()V
    .locals 1

    .line 140
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout$2;-><init>(Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->h()Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProrgamLayoutPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 8

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->c()V

    .line 68
    new-instance v0, Lbnr;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-direct {v0, v1, p0, v2}, Lbnr;-><init>(Landroid/content/Context;Lbnn;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->d:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout$1;-><init>(Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->h:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ab(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected f()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProrgamLayoutPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProrgamLayoutPresenter;->g()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProrgamLayoutPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProrgamLayoutPresenter;->e()V

    return-void
.end method

.method protected getAdapter()Lbnm;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    return-object v0
.end method

.method protected getTabNameId()I
    .locals 1

    .line 57
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_program:I

    return v0
.end method

.method protected h()Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProrgamLayoutPresenter;
    .locals 1

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProrgamLayoutPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProrgamLayoutPresenter;-><init>()V

    return-object v0
.end method

.method public hasData()Z
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getTipsState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    invoke-virtual {v0}, Lbnr;->getItemCount()I

    move-result v0

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public l()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lbnr;->a(Ljava/util/List;)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    invoke-virtual {v0}, Lbnr;->notifyDataSetChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j()V

    return-void
.end method

.method public resetData()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lbnr;->a(Ljava/util/List;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 208
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->g:I

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->g:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setVuiPosition(I)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 213
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->setVuiMode(Lbya;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->i:Ljava/lang/String;

    return-void
.end method

.method public showAlbumLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showCollectLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showMusicLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showRadioLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showReadLoading(ZII)V
    .locals 0

    return-void
.end method

.method public updateAlbumData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateCollectData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 101
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbnr;->a(Ljava/util/List;)V

    .line 102
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->i()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j:Lbnr;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbnr;->c(Ljava/util/List;)V

    .line 108
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->j()V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->i:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public updateMusicData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateRadioData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateReadData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method
