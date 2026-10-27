.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;
.source "MsRmCategoryDetailLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;"
    }
.end annotation


# instance fields
.field protected c:Lbga;

.field protected d:I

.field private e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private f:Landroidx/recyclerview/widget/GridLayoutManager;

.field private g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private i:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$a;

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->d:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v0, p1}, Lbga;->b(I)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private m()V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$6;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbga;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lbga;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbga;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->g()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 371
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lbyb;)V
    .locals 6

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 473
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiLabel(Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPriority(Lbyb;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->a(I)V

    .line 244
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lbga;->a(Ljava/util/List;Z)V

    .line 246
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x2

    .line 247
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b(I)V

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->i:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$a;

    if-eqz p1, :cond_0

    .line 249
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$a;->a()V

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, "payload_playstate"

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {p1}, Lbga;->j()I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v1, p1, v0}, Lbga;->notifyItemChanged(ILjava/lang/Object;)V

    .line 311
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v1}, Lbga;->k()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 314
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 315
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v3, v2, v0}, Lbga;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {p1}, Lbga;->j()I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 323
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v2, p1, v0}, Lbga;->notifyItemChanged(ILjava/lang/Object;)V

    .line 324
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {p1, v1}, Lbga;->d(I)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_recommend_music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 2

    .line 109
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->j:I

    .line 110
    sget v0, Lbez$d;->rm_category_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 112
    sget v0, Lbez$d;->rm_category_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x2

    .line 257
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b(I)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v0, p1, v1}, Lbga;->b(Ljava/util/List;Z)V

    .line 259
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b(I)V

    .line 262
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {p1}, Lbga;->d()V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 458
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 7

    .line 117
    new-instance v6, Lbga;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbez$f;->music_item_recommend_list:I

    new-instance v4, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)V

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v3, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbga;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    sget v2, Lbez$b;->music_rm_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 129
    sget v2, Lbez$b;->music_rm_row:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 130
    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 132
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)V

    invoke-virtual {v0, v1}, Lbga;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->m()V

    return-void
.end method

.method protected g()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;
    .locals 1

    .line 104
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;-><init>()V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 207
    sget v0, Lbez$f;->music_layout_rm_category:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->d:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 454
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->j:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->j:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->j:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->g(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v0}, Lbga;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/music/detail/a;->a()Lcom/xiaopeng/musicradio/music/detail/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/detail/a;->a(Ljava/lang/String;)Lbgo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Lbgo;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lbgo;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v0}, Lbgo;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c(I)V

    .line 227
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v0}, Lbgo;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a(Z)V

    .line 228
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lbgo;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v1}, Lbga;->a(Ljava/util/List;Z)V

    .line 229
    invoke-static {}, Lcom/xiaopeng/musicradio/music/detail/a;->a()Lcom/xiaopeng/musicradio/music/detail/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/detail/a;->b(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 232
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->showLoadingView()V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c(I)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->a(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 435
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->b(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 4

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 490
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->l()V

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v0}, Lbga;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 496
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsRmCategoryDetailLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Lcom/xiaopeng/musicradio/music/detail/a;->a()Lcom/xiaopeng/musicradio/music/detail/a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/music/detail/a;->a(Ljava/lang/String;I)V

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v0}, Lbga;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v1}, Lbga;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a(Ljava/util/List;)V

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lbga;->a(Ljava/util/List;)V

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v0}, Lbga;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onBuildScene()V
    .locals 5

    .line 448
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 381
    sget v0, Lbez$d;->rm_category_loading:I

    if-ne p1, v0, :cond_0

    .line 382
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 383
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 407
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {p1}, Lbga;->notifyDataSetChanged()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCategoryType(I)V
    .locals 0

    return-void
.end method

.method public setDataLoadSuccessListener(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$a;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->i:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$a;

    return-void
.end method

.method public setPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 416
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->d:I

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->k:Ljava/lang/String;

    return-void
.end method

.method public setVuiElementId(I)V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPosition(I)V

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiElementId(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setmId(Ljava/lang/String;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setmSort(I)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b(I)V

    return-void
.end method

.method public setmType(I)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a(I)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->i()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 276
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->a(I)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b(I)V

    .line 279
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->a(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 299
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->a(I)V

    const/4 p1, 0x2

    .line 300
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b(I)V

    return-void
.end method
