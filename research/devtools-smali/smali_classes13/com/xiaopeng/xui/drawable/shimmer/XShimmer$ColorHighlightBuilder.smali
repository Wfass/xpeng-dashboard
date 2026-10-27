.class public Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;
.super Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
.source "XShimmer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorHighlightBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<",
        "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 392
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;-><init>()V

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->alphaShimmer:Z

    .line 394
    return-void
.end method


# virtual methods
.method bridge synthetic consumeAttributes(Landroid/content/res/TypedArray;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 0

    .line 391
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method

.method consumeAttributes(Landroid/content/res/TypedArray;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;
    .locals 2

    .line 409
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 410
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_base_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_base_color:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    .line 412
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 411
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->setBaseColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    .line 414
    :cond_0
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_highlight_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_highlight_color:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->highlightColor:I

    .line 416
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 415
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->setHighlightColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;
    .locals 0

    .line 424
    return-object p0
.end method

.method public bridge synthetic setBaseColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 391
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->setBaseColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBaseColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    .line 404
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHighlightColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 391
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->setHighlightColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHighlightColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->highlightColor:I

    .line 399
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method
