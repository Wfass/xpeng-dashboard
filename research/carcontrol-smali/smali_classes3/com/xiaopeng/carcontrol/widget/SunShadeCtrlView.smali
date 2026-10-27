.class public Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;
.super Lcom/xiaopeng/xui/view/XView;
.source "SunShadeCtrlView.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;


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

.field private mCover:Landroid/graphics/Bitmap;

.field private mDashLine:Landroid/graphics/Bitmap;

.field private mGesture:Landroid/graphics/Bitmap;

.field private mLastDragTime:J

.field private mLastY:I

.field private mListener:Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPos:I

.field private mSunShade:Landroid/graphics/Bitmap;

.field private mTPos:I

.field private final mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x82

    .line 28
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->dp2px(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->DEFAULT_SHADE_TOP_X:I

    const/16 v0, 0xfc

    .line 29
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->dp2px(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->DEFAULT_SHADE_TOP_Y:I

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

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBgOptions:Landroid/graphics/BitmapFactory$Options;

    const/16 p2, 0x64

    .line 35
    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPos:I

    iput p2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mTPos:I

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isShowGesture:Z

    const/4 p3, 0x0

    .line 38
    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isControl:Z

    .line 56
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPaint:Landroid/graphics/Paint;

    .line 57
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mXfermode:Landroid/graphics/Xfermode;

    .line 58
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080096

    invoke-static {p2, p3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-void
.end method

.method private initBitmap()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080096

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBg:Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08028c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mCover:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08028b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mSunShade:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08028d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mDashLine:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08035a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mGesture:Landroid/graphics/Bitmap;

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

    .line 88
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 89
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

    .line 90
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
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

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
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

    .line 71
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBg:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mCover:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mSunShade:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mDashLine:Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mGesture:Landroid/graphics/Bitmap;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->recycleBitmaps([Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBg:Landroid/graphics/Bitmap;

    .line 73
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mCover:Landroid/graphics/Bitmap;

    .line 74
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mSunShade:Landroid/graphics/Bitmap;

    .line 75
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mDashLine:Landroid/graphics/Bitmap;

    .line 76
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mGesture:Landroid/graphics/Bitmap;

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

    .line 236
    :cond_1
    :goto_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mTPos:I

    if-ne p1, v0, :cond_2

    return-void

    .line 239
    :cond_2
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mTPos:I

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onAttachedToWindow()V

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->initBitmap()V

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

    .line 112
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->resetAllBitmaps()V

    .line 115
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->initBitmap()V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isShowGesture:Z

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->resetAllBitmaps()V

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

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBg:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mCover:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mSunShade:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mDashLine:Landroid/graphics/Bitmap;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mGesture:Landroid/graphics/Bitmap;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isBitmapsRecycled([Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->initBitmap()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mCover:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    .line 174
    sget v3, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->DEFAULT_SHADE_TOP_Y:I

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mCover:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPos:I

    rsub-int/lit8 v5, v5, 0x64

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x64

    .line 175
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mCover:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    int-to-float v5, v3

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    sub-int/2addr v1, v4

    .line 179
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPos:I

    rsub-int/lit8 v5, v5, 0x64

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v3

    .line 180
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mSunShade:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    int-to-float v4, v4

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v1, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isControl:Z

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mDashLine:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    sub-int/2addr v1, v4

    .line 184
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mTPos:I

    rsub-int/lit8 v4, v4, 0x64

    mul-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v3, v2

    .line 185
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mDashLine:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 188
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 189
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isShowGesture:Z

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mGesture:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mGesture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mGesture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPaint:Landroid/graphics/Paint;

    .line 190
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

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

    .line 197
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBgOptions:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 203
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mBgOptions:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_0

    .line 207
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_1

    .line 209
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p2, v3, :cond_2

    .line 211
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->setMeasuredDimension(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    if-eq v1, v4, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isControl:Z

    .line 154
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPos:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mTPos:I

    .line 155
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isShowGesture:Z

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->invalidate()V

    goto :goto_0

    .line 134
    :cond_1
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mLastY:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mSunShade:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 135
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPos:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    .line 136
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    .line 137
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isShowGesture:Z

    .line 138
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->setTPos(I)V

    goto :goto_0

    .line 141
    :cond_2
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isControl:Z

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mLastDragTime:J

    sub-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mLastDragTime:J

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mListener:Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;

    if-eqz v0, :cond_4

    .line 146
    iget v1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mTPos:I

    rsub-int/lit8 v1, v1, 0x64

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;->onTargetPosChanged(I)V

    .line 148
    :cond_4
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPos:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mTPos:I

    .line 149
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isShowGesture:Z

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->invalidate()V

    goto :goto_0

    .line 126
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mLastDragTime:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-gez v1, :cond_6

    const-string v0, "SunShadeCtrlView"

    const-string v1, "drag too fast!!!"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 130
    :cond_6
    iput-boolean v4, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->isControl:Z

    .line 131
    iput v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mLastY:I

    :goto_0
    return v4
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

    rsub-int/lit8 p1, p1, 0x64

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 221
    iget v0, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPos:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mPos:I

    .line 226
    iput p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mTPos:I

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->invalidate()V

    return-void

    .line 222
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

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->mListener:Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;

    return-void
.end method
