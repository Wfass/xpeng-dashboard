.class public Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;
.super Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
.source "VuiLoadingTipView.java"


# instance fields
.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->l:Ljava/util/List;

    return-void
.end method

.method private d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getSceneId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->a(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->b(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p0, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->l:Ljava/util/List;

    return-object v0
.end method

.method public onBuildScene()V
    .locals 4

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getSubSceneList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->d()Z

    move-result v3

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->k:Ljava/lang/String;

    return-void
.end method

.method public setSubSceneList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
