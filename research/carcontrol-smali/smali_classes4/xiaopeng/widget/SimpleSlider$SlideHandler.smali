.class public Lxiaopeng/widget/SimpleSlider$SlideHandler;
.super Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;
.source "SimpleSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxiaopeng/widget/SimpleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideHandler"
.end annotation


# instance fields
.field private mIsDragging:Z

.field private mTouchDownProgress:I

.field private mTouchDownX:F

.field private mTouchDownY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1303
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;-><init>()V

    return-void
.end method

.method private handleSlide(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 1349
    :cond_0
    iget-boolean p1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    if-eqz p1, :cond_6

    .line 1350
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    .line 1351
    iput-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    goto :goto_1

    .line 1336
    :cond_1
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 1337
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1339
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1341
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownY:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 1342
    :cond_3
    iget v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1343
    :goto_0
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 1344
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1355
    :cond_4
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    if-eqz v0, :cond_6

    .line 1356
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1357
    iput-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    goto :goto_1

    .line 1329
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    .line 1330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownY:F

    .line 1331
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->startDragDirectly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1332
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->startDrag(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_1
    return v1
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1318
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v0}, Lxiaopeng/widget/SimpleSlider;->access$600(Lxiaopeng/widget/SimpleSlider;)V

    .line 1319
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownProgress:I

    const/4 v0, 0x1

    .line 1320
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    .line 1321
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStartTrackingTouch()V

    .line 1322
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1367
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1368
    iget v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1369
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1370
    iget v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1372
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1374
    :goto_0
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v2

    .line 1375
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1378
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getSlideScale()F

    move-result v2

    mul-float/2addr v0, v2

    .line 1379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 1380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1381
    :cond_3
    :goto_1
    iget p1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownProgress:I

    invoke-virtual {p0, v0, p1, v1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->setProgress(FIZ)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1313
    invoke-super {p0, p1}, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1314
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->handleSlide(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
