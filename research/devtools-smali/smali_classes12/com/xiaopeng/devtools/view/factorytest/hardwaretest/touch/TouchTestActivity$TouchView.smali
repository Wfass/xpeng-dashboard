.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;
.super Landroid/view/View;
.source "TouchTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchView"
.end annotation


# instance fields
.field final synthetic MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

.field private MB:I

.field private MC:I

.field private MD:F

.field private ME:F

.field private MF:F

.field private MG:F

.field private MH:Landroid/graphics/Bitmap;

.field private MI:Landroid/graphics/Bitmap;

.field private MJ:Landroid/graphics/Canvas;

.field private MK:Landroid/graphics/Canvas;

.field private ML:Landroid/graphics/Paint;

.field private MM:Landroid/graphics/Paint;

.field private MN:Landroid/graphics/Paint;

.field private MO:Z


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;Landroid/content/Context;)V
    .locals 1

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    .line 187
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 170
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MD:F

    .line 171
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ME:F

    .line 172
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    .line 173
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    .line 188
    const-string p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 189
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MB:I

    .line 192
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MC:I

    .line 193
    const-string p1, "TouchTestActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Screen size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MB:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MC:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MB:I

    iget p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MC:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MI:Landroid/graphics/Bitmap;

    .line 195
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MI:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    .line 196
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 197
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MB:I

    iget p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MC:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MH:Landroid/graphics/Bitmap;

    .line 198
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MH:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MJ:Landroid/graphics/Canvas;

    .line 199
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->mS()V

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->mT()V

    .line 201
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MO:Z

    .line 202
    return-void
.end method

.method private a(FFLandroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p0

    .line 346
    iget v1, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MC:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 347
    iget v2, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MB:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 348
    div-float v3, p1, v2

    float-to-int v3, v3

    .line 349
    div-float v4, p2, v1

    float-to-int v4, v4

    .line 350
    int-to-float v5, v3

    mul-float/2addr v5, v2

    .line 351
    int-to-float v6, v4

    mul-float/2addr v6, v1

    .line 353
    iget-object v7, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v7}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-gt v4, v7, :cond_4

    iget-object v7, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v7}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v7

    sub-int/2addr v7, v8

    if-le v3, v7, :cond_0

    goto/16 :goto_1

    .line 358
    :cond_0
    iget-object v7, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v7}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)[[Z

    move-result-object v7

    aget-object v7, v7, v4

    aget-boolean v7, v7, v3

    if-nez v7, :cond_2

    .line 359
    iget-object v7, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v7}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)[[Z

    move-result-object v7

    aget-object v7, v7, v4

    aput-boolean v8, v7, v3

    .line 361
    iget-object v7, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v7}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)[[Z

    move-result-object v7

    aget-object v7, v7, v4

    aget-boolean v7, v7, v3

    if-ne v7, v8, :cond_1

    iget-object v7, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v7}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)[[Z

    move-result-object v7

    aget-object v4, v7, v4

    aget-boolean v3, v4, v3

    if-eqz v3, :cond_1

    .line 362
    iget-object v9, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    float-to-int v3, v5

    add-int/2addr v3, v8

    int-to-float v10, v3

    float-to-int v3, v6

    add-int/2addr v3, v8

    int-to-float v11, v3

    add-float v3, v5, v2

    float-to-int v3, v3

    int-to-float v12, v3

    add-float v3, v6, v1

    float-to-int v3, v3

    int-to-float v13, v3

    move-object/from16 v14, p3

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v14, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    float-to-int v3, v5

    add-int/2addr v3, v8

    int-to-float v15, v3

    float-to-int v3, v6

    add-int/2addr v3, v8

    int-to-float v3, v3

    add-float v4, v5, v2

    float-to-int v4, v4

    int-to-float v4, v4

    add-float v7, v6, v1

    float-to-int v7, v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MN:Landroid/graphics/Paint;

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 369
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v7, v5, v4

    float-to-int v7, v7

    sub-float v8, v6, v4

    float-to-int v8, v8

    add-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    add-float/2addr v6, v1

    add-float/2addr v6, v4

    float-to-int v1, v6

    invoke-direct {v3, v7, v8, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->invalidate(Landroid/graphics/Rect;)V

    .line 373
    :cond_2
    iget-object v1, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->f(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    iget-object v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaopeng.action.TOUCH_TEST_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    :cond_3
    return-void

    .line 354
    :cond_4
    :goto_1
    const-string v0, "TouchTestActivity"

    const-string v1, "drawRect"

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Out of bounds"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    .line 251
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MM:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->a(FFLandroid/graphics/Paint;)V

    .line 252
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MO:Z

    .line 253
    return-void
.end method

.method private b(FFFF)V
    .locals 7

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MJ:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    nop

    .line 295
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 296
    float-to-int p1, p1

    .line 297
    float-to-int p3, p3

    .line 303
    move v6, p3

    move p3, p1

    move p1, v6

    goto :goto_0

    .line 299
    :cond_0
    float-to-int p3, p3

    .line 300
    float-to-int p1, p1

    .line 303
    :goto_0
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_1

    .line 304
    float-to-int p2, p2

    .line 305
    float-to-int p4, p4

    .line 311
    move v6, p4

    move p4, p2

    move p2, v6

    goto :goto_1

    .line 307
    :cond_1
    float-to-int p4, p4

    .line 308
    float-to-int p2, p2

    .line 311
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 p1, p1, -0x6

    add-int/lit8 p2, p2, -0x6

    add-int/lit8 p3, p3, 0x6

    add-int/lit8 p4, p4, 0x6

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->invalidate(Landroid/graphics/Rect;)V

    .line 312
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5

    .line 256
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MO:Z

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 258
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MD:F

    .line 259
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ME:F

    .line 260
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    .line 262
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MM:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->a(FFLandroid/graphics/Paint;)V

    .line 263
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MD:F

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ME:F

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->b(FFFF)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MD:F

    .line 267
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ME:F

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    .line 270
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MM:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->a(FFLandroid/graphics/Paint;)V

    .line 271
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MD:F

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ME:F

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->b(FFFF)V

    .line 272
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MO:Z

    .line 274
    :cond_1
    return-void
.end method

.method private c(FF)V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MJ:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    float-to-int p1, p1

    add-int/lit8 v1, p1, -0x6

    float-to-int p2, p2

    add-int/lit8 v2, p2, -0x6

    add-int/lit8 p1, p1, 0x6

    add-int/lit8 p2, p2, 0x6

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->invalidate(Landroid/graphics/Rect;)V

    .line 317
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MO:Z

    if-eqz v0, :cond_1

    .line 278
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MD:F

    .line 279
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ME:F

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    .line 283
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MD:F

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ME:F

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 284
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MF:F

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MG:F

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->c(FF)V

    .line 287
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MO:Z

    .line 289
    :cond_1
    return-void
.end method

.method private mS()V
    .locals 3

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->ML:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MM:Landroid/graphics/Paint;

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MM:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MM:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MN:Landroid/graphics/Paint;

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MN:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MN:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    return-void
.end method

.method private mT()V
    .locals 18

    .line 320
    move-object/from16 v0, p0

    iget v1, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MC:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 321
    iget v2, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MB:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 322
    nop

    .line 323
    nop

    .line 324
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 325
    const/high16 v3, -0x1000000

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    const/4 v10, 0x0

    move v11, v10

    :goto_0
    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    if-ge v11, v3, :cond_1

    .line 328
    int-to-float v3, v11

    mul-float/2addr v3, v1

    float-to-int v12, v3

    .line 330
    move v13, v10

    :goto_1
    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    if-ge v13, v3, :cond_0

    .line 331
    int-to-float v3, v13

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 332
    iget-object v4, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    int-to-float v14, v3

    int-to-float v15, v12

    iget v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MB:I

    int-to-float v6, v3

    move-object v3, v4

    move v4, v14

    move v5, v15

    move v7, v15

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 333
    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    iget v4, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MC:I

    int-to-float v7, v4

    move v4, v14

    move v6, v14

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 334
    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)[[Z

    move-result-object v3

    aget-object v3, v3, v11

    aput-boolean v10, v3, v13

    .line 335
    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)[[Z

    move-result-object v3

    aget-object v3, v3, v11

    aput-boolean v10, v3, v13

    .line 330
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 327
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 339
    :cond_1
    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    const/high16 v9, 0x3f800000    # 1.0f

    add-float v11, v2, v9

    add-float v14, v1, v9

    iget-object v4, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float v6, v4, v9

    iget-object v4, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float v7, v4, v9

    iget-object v8, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MN:Landroid/graphics/Paint;

    move v4, v11

    move v5, v14

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 340
    iget-object v12, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float v13, v3, v9

    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float v15, v3, v9

    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float v16, v3, v9

    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MN:Landroid/graphics/Paint;

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 341
    iget-object v10, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float v12, v3, v9

    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float v13, v3, v9

    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float v14, v3, v9

    iget-object v15, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MN:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 342
    iget-object v3, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MK:Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v9

    iget-object v5, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v9

    iget-object v6, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v6}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v2, v6

    sub-float v6, v2, v9

    iget-object v2, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v7, v1, v9

    iget-object v8, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MN:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 343
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MI:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->MH:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 231
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->b(Landroid/view/MotionEvent;)V

    .line 237
    goto :goto_0

    .line 239
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->c(Landroid/view/MotionEvent;)V

    .line 240
    goto :goto_0

    .line 233
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;->a(Landroid/view/MotionEvent;)V

    .line 234
    nop

    .line 245
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
