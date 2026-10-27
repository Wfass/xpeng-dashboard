.class Lcom/android/car/DebugService$LoadView;
.super Landroid/view/View;
.source "DebugService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/DebugService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadView"
.end annotation


# instance fields
.field private mAddedPaint:Landroid/graphics/Paint;

.field private mAscent:F

.field private mFH:I

.field private mHandler:Landroid/os/Handler;

.field private mIrqPaint:Landroid/graphics/Paint;

.field private mLoadPaint:Landroid/graphics/Paint;

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mRemovedPaint:Landroid/graphics/Paint;

.field private mShadow2Paint:Landroid/graphics/Paint;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private final mStats:Lcom/android/car/DebugService$CpuTracker;

.field private mSystemPaint:Landroid/graphics/Paint;

.field private mUserPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/car/DebugService;


# direct methods
.method constructor <init>(Lcom/android/car/DebugService;Landroid/content/Context;)V
    .locals 10
    .param p2, "c"    # Landroid/content/Context;

    .line 230
    iput-object p1, p0, Lcom/android/car/DebugService$LoadView;->this$0:Lcom/android/car/DebugService;

    .line 231
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance p1, Lcom/android/car/DebugService$LoadView$1;

    invoke-direct {p1, p0}, Lcom/android/car/DebugService$LoadView$1;-><init>(Lcom/android/car/DebugService$LoadView;)V

    iput-object p1, p0, Lcom/android/car/DebugService$LoadView;->mHandler:Landroid/os/Handler;

    .line 233
    const/4 p1, 0x4

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/car/DebugService$LoadView;->setPadding(IIII)V

    .line 240
    const/16 p1, 0xa

    .line 241
    .local p1, "textSize":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 242
    .local v0, "density":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 243
    const/16 p1, 0x9

    goto :goto_0

    .line 245
    :cond_0
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int p1, v1

    .line 246
    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    .line 247
    const/16 p1, 0xa

    .line 251
    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    .line 252
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 256
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/car/DebugService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    .line 257
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 258
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    int-to-float v5, p1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 259
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    const/16 v5, 0x80

    invoke-virtual {v1, v3, v5, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 261
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/car/DebugService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    .line 262
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 264
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    int-to-float v6, p1

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v3, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 267
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/car/DebugService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    .line 268
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v6, p1

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v6, 0xc0

    invoke-virtual {v1, v6, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 272
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, -0x1000000

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v9, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 274
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/car/DebugService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    .line 275
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 278
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 279
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2, v9, v9, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 281
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/car/DebugService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    .line 282
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 283
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v9, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 284
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/car/DebugService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    .line 285
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 286
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v9, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 287
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/car/DebugService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    .line 288
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 289
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v9, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 291
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iput v1, p0, Lcom/android/car/DebugService$LoadView;->mAscent:F

    .line 292
    iget-object v1, p0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 293
    .local v1, "descent":F
    iget v2, p0, Lcom/android/car/DebugService$LoadView;->mAscent:F

    sub-float v2, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/car/DebugService$LoadView;->mFH:I

    .line 295
    new-instance v2, Lcom/android/car/DebugService$CpuTracker;

    iget-object v3, p0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Lcom/android/car/DebugService$CpuTracker;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/car/DebugService$LoadView;->mStats:Lcom/android/car/DebugService$CpuTracker;

    .line 296
    iget-object v2, p0, Lcom/android/car/DebugService$LoadView;->mStats:Lcom/android/car/DebugService$CpuTracker;

    invoke-virtual {v2}, Lcom/android/car/DebugService$CpuTracker;->init()V

    .line 297
    invoke-virtual {p0}, Lcom/android/car/DebugService$LoadView;->updateDisplay()V

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/DebugService$LoadView;)Lcom/android/car/DebugService$CpuTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/DebugService$LoadView;

    .line 201
    iget-object v0, p0, Lcom/android/car/DebugService$LoadView;->mStats:Lcom/android/car/DebugService$CpuTracker;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 302
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 303
    iget-object v0, p0, Lcom/android/car/DebugService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 308
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 309
    iget-object v0, p0, Lcom/android/car/DebugService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object v0, p0

    .line 320
    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 321
    iget v8, v0, Lcom/android/car/DebugService$LoadView;->mNeededWidth:I

    .line 322
    .local v8, "W":I
    invoke-virtual {v0}, Lcom/android/car/DebugService$LoadView;->getWidth()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 324
    .local v9, "RIGHT":I
    iget-object v10, v0, Lcom/android/car/DebugService$LoadView;->mStats:Lcom/android/car/DebugService$CpuTracker;

    .line 335
    .local v10, "stats":Lcom/android/car/DebugService$CpuTracker;
    const/4 v11, 0x0

    .line 338
    .local v11, "gy":I
    iget-object v1, v10, Lcom/android/car/DebugService$CpuTracker;->mCpuTempText:Ljava/lang/String;

    add-int/lit8 v2, v11, 0x64

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v12, 0x43c80000    # 400.0f

    invoke-virtual {v7, v1, v12, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 339
    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$100(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v1

    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$100(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v2

    array-length v2, v2

    iget-object v3, v0, Lcom/android/car/DebugService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v7, v1, v13, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 340
    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$100(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v1

    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$100(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v2

    array-length v2, v2

    const/4 v14, 0x2

    sub-int/2addr v2, v14

    iget-object v3, v0, Lcom/android/car/DebugService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 342
    add-int/lit8 v1, v11, 0x64

    int-to-float v3, v1

    add-int/lit8 v1, v11, 0x64

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v4, 0x43c80000    # 400.0f

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 343
    add-int/lit8 v1, v11, 0x64

    int-to-float v3, v1

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 345
    add-int/lit8 v11, v11, 0x6e

    .line 349
    iget-object v1, v10, Lcom/android/car/DebugService$CpuTracker;->mCpuFreqText:Ljava/lang/String;

    add-int/lit8 v2, v11, 0x64

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v12, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 350
    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$200(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v1

    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$200(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v2

    array-length v2, v2

    iget-object v3, v0, Lcom/android/car/DebugService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v13, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 351
    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$200(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v1

    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$200(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v14

    iget-object v3, v0, Lcom/android/car/DebugService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 352
    add-int/lit8 v1, v11, 0x64

    int-to-float v3, v1

    add-int/lit8 v1, v11, 0x64

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v4, 0x43c80000    # 400.0f

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    add-int/lit8 v1, v11, 0x64

    int-to-float v3, v1

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 354
    add-int/lit8 v11, v11, 0x6e

    .line 356
    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$300(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v1

    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$300(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v2

    array-length v2, v2

    iget-object v3, v0, Lcom/android/car/DebugService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v13, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 357
    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$300(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v1

    invoke-static {v10}, Lcom/android/car/DebugService$CpuTracker;->access$300(Lcom/android/car/DebugService$CpuTracker;)[F

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v14

    iget-object v3, v0, Lcom/android/car/DebugService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 358
    add-int/lit8 v1, v11, 0x64

    int-to-float v3, v1

    add-int/lit8 v1, v11, 0x64

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v4, 0x43c80000    # 400.0f

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 359
    add-int/lit8 v1, v11, 0x64

    int-to-float v3, v1

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    add-int/lit8 v11, v11, 0x64

    .line 361
    iget-object v1, v0, Lcom/android/car/DebugService$LoadView;->this$0:Lcom/android/car/DebugService;

    iget-object v1, v1, Lcom/android/car/DebugService;->mEventString:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    .local v2, "s":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x14

    .line 363
    const/4 v3, 0x0

    int-to-float v4, v11

    iget-object v5, v0, Lcom/android/car/DebugService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 364
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 314
    iget v0, p0, Lcom/android/car/DebugService$LoadView;->mNeededWidth:I

    invoke-static {v0, p1}, Lcom/android/car/DebugService$LoadView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/car/DebugService$LoadView;->mNeededHeight:I

    .line 315
    invoke-static {v1, p2}, Lcom/android/car/DebugService$LoadView;->resolveSize(II)I

    move-result v1

    .line 314
    invoke-virtual {p0, v0, v1}, Lcom/android/car/DebugService$LoadView;->setMeasuredDimension(II)V

    .line 316
    return-void
.end method

.method updateDisplay()V
    .locals 7

    .line 441
    iget-object v0, p0, Lcom/android/car/DebugService$LoadView;->mStats:Lcom/android/car/DebugService$CpuTracker;

    .line 442
    .local v0, "stats":Lcom/android/car/DebugService$CpuTracker;
    invoke-virtual {v0}, Lcom/android/car/DebugService$CpuTracker;->countWorkingStats()I

    move-result v1

    .line 444
    .local v1, "NW":I
    iget v2, v0, Lcom/android/car/DebugService$CpuTracker;->mLoadWidth:I

    .line 445
    .local v2, "maxWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 446
    invoke-virtual {v0, v3}, Lcom/android/car/DebugService$CpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v4

    .line 447
    .local v4, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    if-le v5, v2, :cond_0

    .line 448
    iget v2, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 445
    .end local v4    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v3    # "i":I
    :cond_1
    iget v3, p0, Lcom/android/car/DebugService$LoadView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/car/DebugService$LoadView;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 453
    .local v3, "neededWidth":I
    iget v4, p0, Lcom/android/car/DebugService$LoadView;->mPaddingTop:I

    iget v5, p0, Lcom/android/car/DebugService$LoadView;->mPaddingBottom:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/car/DebugService$LoadView;->mFH:I

    const/4 v6, 0x1

    add-int/2addr v6, v1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/car/DebugService$LoadView;->mFH:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 454
    .local v4, "neededHeight":I
    iget v5, p0, Lcom/android/car/DebugService$LoadView;->mNeededWidth:I

    if-ne v3, v5, :cond_3

    iget v5, p0, Lcom/android/car/DebugService$LoadView;->mNeededHeight:I

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/DebugService$LoadView;->invalidate()V

    goto :goto_2

    .line 455
    :cond_3
    :goto_1
    const/16 v5, 0x640

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/car/DebugService$LoadView;->mNeededWidth:I

    .line 456
    add-int/lit16 v5, v4, 0x140

    iget-object v6, p0, Lcom/android/car/DebugService$LoadView;->this$0:Lcom/android/car/DebugService;

    iget v6, v6, Lcom/android/car/DebugService;->mEventStringHight:I

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/car/DebugService$LoadView;->mNeededHeight:I

    .line 457
    invoke-virtual {p0}, Lcom/android/car/DebugService$LoadView;->requestLayout()V

    .line 461
    :goto_2
    return-void
.end method
