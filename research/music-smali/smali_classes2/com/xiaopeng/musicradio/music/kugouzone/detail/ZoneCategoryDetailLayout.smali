.class public Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;
.super Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;
.source "ZoneCategoryDetailLayout.java"


# instance fields
.field protected e:I

.field protected f:I

.field private g:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->e:I

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->e:I

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->e:I

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->f:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;)Lbga;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->c:Lbga;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->g:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->i:I

    return p0
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->m()Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 72
    iget v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "listsign_singer_single_music"

    goto :goto_0

    :cond_0
    const-string v0, "listsign_recommend_music"

    .line 75
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

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

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected d()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->d()V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->c:Lbga;

    new-instance v1, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;)V

    invoke-virtual {v0, v1}, Lbga;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected synthetic g()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->m()Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->i:I

    return v0
.end method

.method public getStyleType()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->g:I

    return v0
.end method

.method public h()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->c(I)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->c()V

    return-void
.end method

.method protected m()Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;
    .locals 1

    .line 51
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;-><init>()V

    return-object v0
.end method

.method public setCategoryType(I)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->setStyleType(I)V

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->i:I

    return-void
.end method

.method public setStyleType(I)V
    .locals 1

    .line 61
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->g:I

    .line 62
    iget p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->g:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->c:Lbga;

    const-string v0, "listsign_recommend_music"

    invoke-virtual {p1, v0}, Lbga;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->c:Lbga;

    const-string v0, "listsign_singer_single_music"

    invoke-virtual {p1, v0}, Lbga;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setZoneModelSource(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->f:I

    return-void
.end method

.method public setZoneModelType(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCategoryDetailLayout;->e:I

    return-void
.end method
