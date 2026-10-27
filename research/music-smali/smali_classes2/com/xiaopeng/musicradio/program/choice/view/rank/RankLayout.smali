.class public Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;
.source "RankLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/choice/view/rank/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout<",
        "Lcom/xiaopeng/musicradio/program/choice/view/rank/a;",
        "Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/program/choice/view/rank/a;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "RankLayout"


# instance fields
.field private d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->f()Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->getPlayControlView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->h:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ap(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->getPlayControlView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;III)V
    .locals 6

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    const/16 p1, 0x8

    if-nez p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    sget-object p2, Lbya;->DISABLED:Lbya;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->setVuiMode(Lbya;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->getVisibility()I

    move-result p3

    if-ne p3, p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->setVisibility(I)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lbmy;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result p3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->isAuthorized()Z

    move-result p5

    invoke-virtual {p1, p3, p5}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a(IZ)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    sget p3, Lcom/xiaopeng/musicradio/program/b$f;->item_rank_album:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->setTag(ILjava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;->a(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a(I)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a(I)V

    :goto_0
    return-void
.end method

.method protected b()V
    .locals 2

    .line 54
    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->c:Ljava/lang/String;

    const-string v1, "findView: ======="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rank_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected f()Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;
    .locals 1

    .line 49
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankLayoutPresenter;-><init>()V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->layout_rank:I

    return v0
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->s_()V

    return-void
.end method

.method public s_()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a()V

    return-void
.end method

.method public setItemClickListener(Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setItemPlayListener(Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->d:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->setPlayListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
