.class public Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;
.super Ljava/lang/Object;
.source "ControlWindow.java"


# static fields
.field private static final CONTROL_LEFT_REAR_MSG_WHAT:I = 0x2

.field private static final CONTROL_RIGHT_REAR_MSG_WHAT:I = 0x4

.field private static final REAR_MIN_HIGH:I = 0x8

.field private static final WINDOW_MAX_POSITION:I = 0x64

.field private static final WINDOW_MIN_POSITION:I


# instance fields
.field private mControlX:F

.field private mControlY:F

.field private mIsControl:Z

.field private mMaxMoveX:F

.field private mMaxMoveY:F

.field private mMoveK:F

.field private mRealMoveX:F

.field private mRealMoveY:F

.field private mWindowPos:I


# direct methods
.method constructor <init>(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxMoveY",
            "maxMoveX"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMaxMoveY:F

    .line 28
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMaxMoveX:F

    div-float/2addr p2, p1

    .line 29
    iput p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMoveK:F

    return-void
.end method

.method private getMoveX()F
    .locals 2

    .line 70
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mWindowPos:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMaxMoveX:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getMoveY()F
    .locals 2

    .line 66
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mWindowPos:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMaxMoveY:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private resetControlYX()V
    .locals 1

    .line 93
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mRealMoveY:F

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlY:F

    .line 94
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mRealMoveX:F

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlX:F

    return-void
.end method


# virtual methods
.method controlFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mIsControl:Z

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->resetControlYX()V

    return-void
.end method

.method getControlPos()I
    .locals 2

    .line 122
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlY:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMaxMoveY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x64

    return v0
.end method

.method getControlX()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlX:F

    return v0
.end method

.method getControlY()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlY:F

    return v0
.end method

.method getRealMoveX()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mRealMoveX:F

    return v0
.end method

.method getRealMoveY()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mRealMoveY:F

    return v0
.end method

.method getWindowPos()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mWindowPos:I

    return v0
.end method

.method isControl()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mIsControl:Z

    return v0
.end method

.method isRearWindow(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowType"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method moveWindow(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dy"
        }
    .end annotation

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mIsControl:Z

    .line 99
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlY:F

    .line 100
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMaxMoveY:F

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 101
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlY:F

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 103
    iput v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlY:F

    .line 105
    :cond_1
    :goto_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlX:F

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMoveK:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlX:F

    .line 106
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMaxMoveX:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_2

    .line 107
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlX:F

    goto :goto_1

    :cond_2
    cmpl-float p1, v0, v3

    if-lez p1, :cond_3

    .line 109
    iput v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mControlX:F

    :cond_3
    :goto_1
    return-void
.end method

.method moveWindow(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 114
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mMaxMoveY:F

    mul-float/2addr p1, v0

    .line 115
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->moveWindow(F)V

    return-void
.end method

.method setWindowPos(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "windowType"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->verifyPosition(II)I

    move-result p1

    .line 34
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mWindowPos:I

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getMoveY()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mRealMoveY:F

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->getMoveX()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mRealMoveX:F

    .line 37
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->mIsControl:Z

    if-nez p1, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->resetControlYX()V

    :cond_0
    return-void
.end method

.method verifyPosition(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "windowType"
        }
    .end annotation

    const/16 v0, 0x64

    const/16 v1, 0x8

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_1

    :cond_0
    if-gez p1, :cond_2

    .line 50
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isRearWindow(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/fragment/ControlWindow;->isRearWindow(I)Z

    move-result p2

    if-eqz p2, :cond_3

    if-ge p1, v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method
