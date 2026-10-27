.class public Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;
.super Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
.source "XShimmer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaHighlightBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<",
        "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 381
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;-><init>()V

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->alphaShimmer:Z

    .line 383
    return-void
.end method


# virtual methods
.method protected getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;
    .locals 0

    .line 387
    return-object p0
.end method

.method protected bridge synthetic getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;

    move-result-object v0

    return-object v0
.end method
