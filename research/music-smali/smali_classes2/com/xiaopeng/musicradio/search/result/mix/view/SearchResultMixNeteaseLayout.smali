.class public Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;
.super Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;
.source "SearchResultMixNeteaseLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;->f()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixNeteasePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixNeteasePresenter;
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixNeteasePresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixNeteasePresenter;-><init>()V

    return-object v0
.end method

.method protected synthetic g()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;->f()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixNeteasePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected getAccountType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
