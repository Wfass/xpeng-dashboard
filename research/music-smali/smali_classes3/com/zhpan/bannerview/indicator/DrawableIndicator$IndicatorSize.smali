.class public final Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;
.super Ljava/lang/Object;
.source "DrawableIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhpan/bannerview/indicator/DrawableIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndicatorSize"
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private checkedHeight:I

.field private checkedWidth:I

.field private normalHeight:I

.field private normalWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->normalWidth:I

    .line 190
    iput p2, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->normalHeight:I

    .line 191
    iput p3, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->checkedWidth:I

    .line 192
    iput p4, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->checkedHeight:I

    return-void
.end method


# virtual methods
.method public final getCheckedHeight()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->checkedHeight:I

    return v0
.end method

.method public final getCheckedWidth()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->checkedWidth:I

    return v0
.end method

.method public final getNormalHeight()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->normalHeight:I

    return v0
.end method

.method public final getNormalWidth()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->normalWidth:I

    return v0
.end method

.method public final setCheckedHeight(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->checkedHeight:I

    return-void
.end method

.method public final setCheckedWidth(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->checkedWidth:I

    return-void
.end method

.method public final setNormalHeight(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->normalHeight:I

    return-void
.end method

.method public final setNormalWidth(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->normalWidth:I

    return-void
.end method
