.class public Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;
.super Lcom/xiaopeng/xui/view/XView;
.source "SunShadeCtrlViewNew.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_POS:I = 0x64

.field private static final DEFAULT_SHADE_TOP_X:I

.field private static final DEFAULT_SHADE_TOP_Y:I

.field private static final TAG:Ljava/lang/String; = "SunShadeCtrlView"


# instance fields
.field private isControl:Z

.field private isShowGesture:Z

.field private mBg:Landroid/graphics/Bitmap;

.field private final mBgOptions:Landroid/graphics/BitmapFactory$Options;

.field private mControlHandle:Landroid/os/Handler;

.field private mCover:Landroid/graphics/Bitmap;

.field private mCoverX:I

.field private mCoverY:I

.field private mDashLine:Landroid/graphics/Bitmap;

.field private mGesture:Landroid/graphics/Bitmap;

.field private mLastDragTime:J

.field private mLastMoveTime:J

.field private mLastX:I

.field private mListener:Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPos:I

.field private mSunShade:Landroid/graphics/Bitmap;

.field private mTPos:I

.field private final mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x35d

    .line 28
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->dp2px(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->DEFAULT_SHADE_TOP_X:I

    const/16 v0, 0xfc

    .line 29
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->dp2px(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->DEFAULT_SHADE_TOP_Y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBgOptions:Landroid/graphics/BitmapFactory$Options;

    const/16 p2, 0x64

    .line 35
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPos:I

    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mTPos:I

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isShowGesture:Z

    const/4 p3, 0x0

    .line 38
    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isControl:Z

    const-wide/16 p3, 0x0

    .line 39
    iput-wide p3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mLastMoveTime:J

    .line 45
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mControlHandle:Landroid/os/Handler;

    .line 61
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mXfermode:Landroid/graphics/Xfermode;

    .line 63
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080099

    invoke-static {p2, p3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-void
.end method

.method private initBitmap()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080099

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBg:Landroid/graphics/Bitmap;

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08028e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCover:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080098

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mDashLine:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08035b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mGesture:Landroid/graphics/Bitmap;

    return-void
.end method

.method private varargs isBitmapsRecycled([Landroid/graphics/Bitmap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmaps"
        }
    .end annotation

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "SunShadeCtrlView"

    const-string v0, "bitmap is recycled"

    .line 95
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private isTouchSunShadeCenter(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 134
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCoverX:I

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCoverY:I

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private varargs recycleBitmaps([Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmaps"
        }
    .end annotation

    .line 85
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetAllBitmaps()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 76
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBg:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCover:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mDashLine:Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mGesture:Landroid/graphics/Bitmap;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->recycleBitmaps([Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBg:Landroid/graphics/Bitmap;

    .line 78
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCover:Landroid/graphics/Bitmap;

    .line 79
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    .line 80
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mDashLine:Landroid/graphics/Bitmap;

    .line 81
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mGesture:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setTPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tPos"
        }
    .end annotation

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 261
    :cond_1
    :goto_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mTPos:I

    if-ne p1, v0, :cond_2

    return-void

    .line 264
    :cond_2
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mTPos:I

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 104
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onAttachedToWindow()V

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->initBitmap()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 118
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->resetAllBitmaps()V

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->initBitmap()V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isShowGesture:Z

    .line 112
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->resetAllBitmaps()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mControlHandle:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBg:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCover:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mDashLine:Landroid/graphics/Bitmap;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mGesture:Landroid/graphics/Bitmap;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isBitmapsRecycled([Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->initBitmap()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCover:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0xa

    .line 199
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCover:Landroid/graphics/Bitmap;

    sget v4, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->DEFAULT_SHADE_TOP_X:I

    int-to-float v5, v4

    int-to-float v6, v1

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 200
    iput v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCoverX:I

    .line 201
    iput v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mCoverY:I

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0xa

    .line 205
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPos:I

    mul-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v4

    .line 206
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    int-to-float v3, v3

    int-to-float v1, v1

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 208
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isControl:Z

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mDashLine:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    .line 210
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mTPos:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v4

    .line 211
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mDashLine:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 214
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 215
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isShowGesture:Z

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mGesture:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x2d

    int-to-float v1, v4

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v6, v2

    const/high16 v2, 0x41f00000    # 30.0f

    sub-float/2addr v6, v2

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v6, v2

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 222
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 225
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBgOptions:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 228
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mBgOptions:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 230
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_0

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->setMeasuredDimension(II)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_1

    .line 234
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->setMeasuredDimension(II)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p2, v3, :cond_2

    .line 236
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->setMeasuredDimension(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    const/4 p1, 0x0

    if-eq v2, v5, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto/16 :goto_0

    .line 177
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isControl:Z

    .line 178
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPos:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mTPos:I

    .line 179
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isShowGesture:Z

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->invalidate()V

    goto/16 :goto_0

    .line 159
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mLastX:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x64

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v1, v0

    .line 160
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPos:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    .line 161
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    .line 162
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isShowGesture:Z

    .line 163
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->setTPos(I)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mLastDragTime:J

    sub-long/2addr v0, v6

    cmp-long v0, v0, v3

    if-ltz v0, :cond_3

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mLastDragTime:J

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mListener:Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;

    if-eqz v0, :cond_4

    .line 170
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mTPos:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;->onTargetPosChanged(I)V

    .line 172
    :cond_4
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isShowGesture:Z

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->invalidate()V

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mControlHandle:Landroid/os/Handler;

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 144
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mLastDragTime:J

    sub-long/2addr v6, v8

    cmp-long v2, v6, v3

    const-string v3, "SunShadeCtrlView"

    if-gez v2, :cond_6

    const-string v0, "drag too fast!!!"

    .line 145
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 149
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mLastMoveTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v2, v6, v8

    if-gez v2, :cond_7

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isTouchSunShadeCenter(II)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v0, "ignore the outside touch action when moving"

    .line 150
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 154
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mControlHandle:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isControl:Z

    .line 156
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mLastX:I

    :goto_0
    return v5
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->isControl:Z

    .line 129
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPos:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mTPos:I

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->invalidate()V

    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mPos:I

    .line 250
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mTPos:I

    .line 251
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->invalidate()V

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mLastMoveTime:J

    return-void

    .line 246
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SunShadeCtrlView"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTPosChangeListener(Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlViewNew;->mListener:Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;

    return-void
.end method
