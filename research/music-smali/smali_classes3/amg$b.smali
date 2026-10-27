.class public Lamg$b;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:F

.field e:F

.field f:J

.field g:J

.field final synthetic h:Lamg;


# direct methods
.method constructor <init>(Lamg;F)V
    .locals 2

    .line 1403
    iput-object p1, p0, Lamg$b;->h:Lamg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1396
    iput v0, p0, Lamg$b;->b:I

    const/16 v0, 0xa

    .line 1397
    iput v0, p0, Lamg$b;->c:I

    const v0, 0x3f7ae148    # 0.98f

    .line 1399
    iput v0, p0, Lamg$b;->e:F

    const-wide/16 v0, 0x0

    .line 1400
    iput-wide v0, p0, Lamg$b;->f:J

    .line 1401
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lamg$b;->g:J

    .line 1404
    iput p2, p0, Lamg$b;->d:F

    .line 1405
    iget p1, p1, Lamg;->b:I

    iput p1, p0, Lamg$b;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 10

    .line 1409
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    iget-boolean v0, v0, Lamo;->isFinishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1412
    :cond_0
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget v0, v0, Lamg;->b:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    iget-boolean v0, v0, Lamo;->isOpening:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-boolean v0, v0, Lamg;->T:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-boolean v0, v0, Lamg;->H:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-boolean v0, v0, Lamg;->U:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-boolean v2, v0, Lamg;->C:Z

    invoke-virtual {v0, v2}, Lamg;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->Loading:Lamo;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-boolean v0, v0, Lamg;->T:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-boolean v0, v0, Lamg;->H:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-boolean v0, v0, Lamg;->U:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-boolean v2, v0, Lamg;->C:Z

    .line 1413
    invoke-virtual {v0, v2}, Lamg;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget v0, v0, Lamg;->b:I

    iget-object v2, p0, Lamg$b;->h:Lamg;

    iget v2, v2, Lamg;->ak:I

    neg-int v2, v2

    if-lt v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->Refreshing:Lamo;

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget v0, v0, Lamg;->b:I

    iget-object v2, p0, Lamg$b;->h:Lamg;

    iget v2, v2, Lamg;->ai:I

    if-le v0, v2, :cond_8

    :cond_4
    const/4 v0, 0x0

    .line 1416
    iget-object v2, p0, Lamg$b;->h:Lamg;

    iget v2, v2, Lamg;->b:I

    .line 1417
    iget-object v3, p0, Lamg$b;->h:Lamg;

    iget v3, v3, Lamg;->b:I

    .line 1418
    iget v4, p0, Lamg$b;->d:F

    :goto_0
    mul-int v5, v3, v2

    if-lez v5, :cond_8

    float-to-double v4, v4

    .line 1420
    iget v6, p0, Lamg$b;->e:F

    float-to-double v6, v6

    add-int/lit8 v0, v0, 0x1

    iget v8, p0, Lamg$b;->c:I

    mul-int/2addr v8, v0

    int-to-float v8, v8

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    .line 1421
    iget v5, p0, Lamg$b;->c:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v5, v7

    mul-float/2addr v5, v4

    .line 1422
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v7, v6

    if-gez v6, :cond_7

    .line 1423
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    iget-boolean v0, v0, Lamo;->isOpening:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    sget-object v3, Lamo;->Refreshing:Lamo;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget v0, v0, Lamg;->ai:I

    if-gt v2, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    sget-object v3, Lamo;->Refreshing:Lamo;

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget v0, v0, Lamg;->ak:I

    neg-int v0, v0

    if-ge v2, v0, :cond_8

    :cond_6
    return-object v1

    :cond_7
    int-to-float v2, v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    goto :goto_0

    .line 1433
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lamg$b;->f:J

    .line 1434
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->av:Landroid/os/Handler;

    iget v1, p0, Lamg$b;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public run()V
    .locals 11

    .line 1440
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->aM:Ljava/lang/Runnable;

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->ax:Lamo;

    iget-boolean v0, v0, Lamo;->isFinishing:Z

    if-nez v0, :cond_2

    .line 1442
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1443
    iget-wide v2, p0, Lamg$b;->g:J

    sub-long v2, v0, v2

    .line 1444
    iget v4, p0, Lamg$b;->d:F

    float-to-double v4, v4

    iget v6, p0, Lamg$b;->e:F

    float-to-double v6, v6

    iget-wide v8, p0, Lamg$b;->f:J

    sub-long v8, v0, v8

    long-to-float v8, v8

    iget v9, p0, Lamg$b;->c:I

    int-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float v9, v10, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lamg$b;->d:F

    .line 1445
    iget v4, p0, Lamg$b;->d:F

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v10

    mul-float/2addr v4, v2

    .line 1446
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 1447
    iput-wide v0, p0, Lamg$b;->g:J

    .line 1448
    iget v0, p0, Lamg$b;->a:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lamg$b;->a:I

    .line 1449
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget v0, v0, Lamg;->b:I

    iget v1, p0, Lamg$b;->a:I

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 1450
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->aw:Laml;

    iget v2, p0, Lamg$b;->a:I

    invoke-interface {v0, v2, v1}, Laml;->moveSpinner(IZ)Laml;

    .line 1451
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->av:Landroid/os/Handler;

    iget v1, p0, Lamg$b;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1453
    :cond_0
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iput-object v3, v0, Lamg;->aM:Ljava/lang/Runnable;

    .line 1454
    iget-object v0, v0, Lamg;->aw:Laml;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Laml;->moveSpinner(IZ)Laml;

    .line 1455
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-object v0, v0, Lamg;->at:Lami;

    invoke-interface {v0}, Lami;->b()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lamg$b;->d:F

    neg-float v1, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lane;->a(Landroid/view/View;I)V

    .line 1456
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iget-boolean v0, v0, Lamg;->aF:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_2

    .line 1457
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iput-boolean v2, v0, Lamg;->aF:Z

    goto :goto_0

    .line 1461
    :cond_1
    iget-object v0, p0, Lamg$b;->h:Lamg;

    iput-object v3, v0, Lamg;->aM:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method
