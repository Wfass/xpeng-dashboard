.class public Lcom/zhpan/bannerview/manager/BannerOptions;
.super Ljava/lang/Object;
.source "BannerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;
    }
.end annotation


# static fields
.field public static final DEFAULT_REVEAL_WIDTH:I = -0x3e8


# instance fields
.field private autoScrollSmoothly:Z

.field private disallowParentInterceptDownEvent:Z

.field private indicatorGravity:I

.field private interval:I

.field private isAutoPlay:Z

.field private isCanLoop:Z

.field private leftRevealWidth:I

.field private mIndicatorMargin:Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;

.field private final mIndicatorOptions:Lbyu;

.field private mIndicatorVisibility:I

.field private offScreenPageLimit:I

.field private orientation:I

.field private pageMargin:I

.field private pageScale:F

.field private pageStyle:I

.field private rightRevealWidth:I

.field private roundRadius:I

.field private roundRadiusArray:[F

.field private rtl:Z

.field private scrollDuration:I

.field private stopLoopWhenDetachedFromWindow:Z

.field private userInputEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->offScreenPageLimit:I

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->isAutoPlay:Z

    .line 64
    iput v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->pageStyle:I

    const v1, 0x3f59999a    # 0.85f

    .line 66
    iput v1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->pageScale:F

    .line 70
    iput v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorVisibility:I

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->userInputEnabled:Z

    .line 80
    iput v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->orientation:I

    .line 86
    iput-boolean v1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->stopLoopWhenDetachedFromWindow:Z

    .line 88
    iput-boolean v1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->autoScrollSmoothly:Z

    .line 40
    new-instance v0, Lbyu;

    invoke-direct {v0}, Lbyu;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 41
    invoke-static {v0}, Lcom/zhpan/bannerview/utils/BannerUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->pageMargin:I

    const/16 v0, -0x3e8

    .line 42
    iput v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->rightRevealWidth:I

    .line 43
    iput v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->leftRevealWidth:I

    return-void
.end method


# virtual methods
.method public getCheckedIndicatorWidth()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->j()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIndicatorCheckedColor()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->f()I

    move-result v0

    return v0
.end method

.method public getIndicatorGap()F
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->g()F

    move-result v0

    return v0
.end method

.method public getIndicatorGravity()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->indicatorGravity:I

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->h()F

    move-result v0

    return v0
.end method

.method public getIndicatorMargin()Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorMargin:Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;

    return-object v0
.end method

.method public getIndicatorNormalColor()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->e()I

    move-result v0

    return v0
.end method

.method public getIndicatorOptions()Lbyu;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    return-object v0
.end method

.method public getIndicatorSlideMode()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->c()I

    move-result v0

    return v0
.end method

.method public getIndicatorStyle()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->b()I

    move-result v0

    return v0
.end method

.method public getIndicatorVisibility()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorVisibility:I

    return v0
.end method

.method public getInterval()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->interval:I

    return v0
.end method

.method public getLeftRevealWidth()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->leftRevealWidth:I

    return v0
.end method

.method public getNormalIndicatorWidth()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->i()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOffScreenPageLimit()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->offScreenPageLimit:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->orientation:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->pageMargin:I

    return v0
.end method

.method public getPageScale()F
    .locals 1

    .line 221
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->pageScale:F

    return v0
.end method

.method public getPageStyle()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->pageStyle:I

    return v0
.end method

.method public getRightRevealWidth()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->rightRevealWidth:I

    return v0
.end method

.method public getRoundRectRadius()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->roundRadius:I

    return v0
.end method

.method public getRoundRectRadiusArray()[F
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->roundRadiusArray:[F

    return-object v0
.end method

.method public getScrollDuration()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->scrollDuration:I

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->isAutoPlay:Z

    return v0
.end method

.method public isAutoScrollSmoothly()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->autoScrollSmoothly:Z

    return v0
.end method

.method public isCanLoop()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->isCanLoop:Z

    return v0
.end method

.method public isDisallowParentInterceptDownEvent()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->disallowParentInterceptDownEvent:Z

    return v0
.end method

.method public isRtl()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->rtl:Z

    return v0
.end method

.method public isStopLoopWhenDetachedFromWindow()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->stopLoopWhenDetachedFromWindow:Z

    return v0
.end method

.method public isUserInputEnabled()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->userInputEnabled:Z

    return v0
.end method

.method public resetIndicatorOptions()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbyu;->g(I)V

    .line 304
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbyu;->e(F)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->isAutoPlay:Z

    return-void
.end method

.method public setAutoScrollSmoothly(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->autoScrollSmoothly:Z

    return-void
.end method

.method public setCanLoop(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->isCanLoop:Z

    return-void
.end method

.method public setDisallowParentInterceptDownEvent(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->disallowParentInterceptDownEvent:Z

    return-void
.end method

.method public setIndicatorGap(F)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->a(F)V

    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->indicatorGravity:I

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lbyu;->b(F)V

    return-void
.end method

.method public setIndicatorMargin(IIII)V
    .locals 1

    .line 233
    new-instance v0, Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;-><init>(IIII)V

    iput-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorMargin:Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;

    return-void
.end method

.method public setIndicatorSlideMode(I)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->c(I)V

    return-void
.end method

.method public setIndicatorSliderColor(II)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1, p2}, Lbyu;->a(II)V

    return-void
.end method

.method public setIndicatorSliderWidth(II)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lbyu;->a(FF)V

    return-void
.end method

.method public setIndicatorStyle(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->b(I)V

    return-void
.end method

.method public setIndicatorVisibility(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorVisibility:I

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->interval:I

    return-void
.end method

.method public setLeftRevealWidth(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->leftRevealWidth:I

    return-void
.end method

.method public setOffScreenPageLimit(I)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->offScreenPageLimit:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 290
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->orientation:I

    .line 291
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->a(I)V

    return-void
.end method

.method public setPageMargin(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->pageMargin:I

    return-void
.end method

.method public setPageScale(F)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->pageScale:F

    return-void
.end method

.method public setPageStyle(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->pageStyle:I

    return-void
.end method

.method public setRightRevealWidth(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->rightRevealWidth:I

    return-void
.end method

.method public setRoundRectRadius(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->roundRadius:I

    return-void
.end method

.method public setRoundRectRadius(IIII)V
    .locals 2

    const/16 v0, 0x8

    .line 258
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->roundRadiusArray:[F

    .line 259
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->roundRadiusArray:[F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    .line 260
    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x2

    .line 261
    aput p1, v0, p2

    const/4 p2, 0x3

    .line 262
    aput p1, v0, p2

    int-to-float p1, p4

    const/4 p2, 0x4

    .line 263
    aput p1, v0, p2

    const/4 p2, 0x5

    .line 264
    aput p1, v0, p2

    int-to-float p1, p3

    const/4 p2, 0x6

    .line 265
    aput p1, v0, p2

    const/4 p2, 0x7

    .line 266
    aput p1, v0, p2

    return-void
.end method

.method public setRtl(Z)V
    .locals 1

    .line 328
    iput-boolean p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->rtl:Z

    .line 329
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lbyu;->a(I)V

    return-void
.end method

.method public setScrollDuration(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->scrollDuration:I

    return-void
.end method

.method public setStopLoopWhenDetachedFromWindow(Z)V
    .locals 0

    .line 338
    iput-boolean p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->stopLoopWhenDetachedFromWindow:Z

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->userInputEnabled:Z

    return-void
.end method

.method public showIndicatorWhenOneItem(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/zhpan/bannerview/manager/BannerOptions;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->a(Z)V

    return-void
.end method
