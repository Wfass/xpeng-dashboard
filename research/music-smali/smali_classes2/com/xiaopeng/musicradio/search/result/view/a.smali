.class public abstract Lcom/xiaopeng/musicradio/search/result/view/a;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "BaseSearchItemView.java"


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/a;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/a;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->album_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 0

    .line 83
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayState(I)V

    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 11

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "program_item_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->vui_play_position:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 72
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/search/result/view/a;->setVuiLabel(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/a;->setVuiPosition(I)V

    .line 75
    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/a;->getDeafultAlbumLogo()I

    move-result v8

    if-eqz p3, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v1

    :goto_0
    iget-object v10, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move v7, p1

    invoke-virtual/range {v4 .. v10}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->b:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->c:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/a;->getDeafultAlbumLogo()I

    move-result v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/a;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 64
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v3

    invoke-virtual {v3}, Lbnz;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 62
    invoke-static {p1, v0, v1, p2, v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(Landroid/content/Context;Landroid/widget/TextView;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected abstract getDeafultAlbumLogo()I
.end method

.method protected abstract getLayoutId()I
.end method

.method public setOnPlayControlListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRecycleView(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/a;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method
