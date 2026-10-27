.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;
.super Ljava/lang/Object;
.source "QcSliderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QcSliderDrawableBuilder"
.end annotation


# instance fields
.field private mBgColor:I

.field private mBgRadius:F

.field private mInsetX:I

.field private mInsetY:I

.field private mSliderColor:I

.field private mSliderFrom:I

.field private mSliderInnerRadius:F

.field private mSliderInsetX:I

.field private mSliderInsetY:I

.field private mSliderOuterRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mBgRadius:F

    .line 955
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderOuterRadius:F

    .line 956
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderInnerRadius:F

    .line 958
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderFrom:I

    .line 961
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderInsetX:I

    .line 962
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderInsetY:I

    .line 963
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mInsetX:I

    .line 964
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mInsetY:I

    return-void
.end method


# virtual methods
.method build()Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;
    .locals 3

    .line 1036
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mBgColor:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderColor:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;-><init>(II)V

    .line 1037
    .local v0, "drawable":Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mBgRadius:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setCornerRadius(F)V

    .line 1038
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderOuterRadius:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setSliderOuterCornerRadius(F)V

    .line 1039
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderInnerRadius:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setSliderInnerRadius(F)V

    .line 1040
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderFrom:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setSliderFrom(I)V

    .line 1041
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderInsetX:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderInsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setSliderInset(II)V

    .line 1042
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mInsetX:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mInsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setInset(II)V

    .line 1043
    return-object v0
.end method

.method setColor(II)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;
    .locals 0
    .param p1, "bgColor"    # I
    .param p2, "sliderColor"    # I

    .line 972
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mBgColor:I

    .line 973
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderColor:I

    .line 974
    return-object p0
.end method

.method setCornerRadius(F)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;
    .locals 1
    .param p1, "radius"    # F

    .line 982
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 983
    const/4 p1, 0x0

    .line 985
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mBgRadius:F

    .line 986
    return-object p0
.end method

.method setInset(II)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;
    .locals 0
    .param p1, "insetX"    # I
    .param p2, "insetY"    # I

    .line 1030
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mInsetX:I

    .line 1031
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mInsetY:I

    .line 1032
    return-object p0
.end method

.method setSliderFrom(I)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;
    .locals 0
    .param p1, "edge"    # I

    .line 1019
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderFrom:I

    .line 1020
    return-object p0
.end method

.method setSliderInnerCornerRadius(F)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;
    .locals 1
    .param p1, "radius"    # F

    .line 1006
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1007
    const/4 p1, 0x0

    .line 1009
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderInnerRadius:F

    .line 1010
    return-object p0
.end method

.method setSliderInset(II)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;
    .locals 0
    .param p1, "insetX"    # I
    .param p2, "insetY"    # I

    .line 1024
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderInsetX:I

    .line 1025
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderInsetY:I

    .line 1026
    return-object p0
.end method

.method setSliderOuterCornerRadius(F)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;
    .locals 1
    .param p1, "radius"    # F

    .line 994
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 995
    const/4 p1, 0x0

    .line 997
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawableBuilder;->mSliderOuterRadius:F

    .line 998
    return-object p0
.end method
