.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# instance fields
.field a:Landroid/graphics/Path;

.field b:Landroid/graphics/Paint;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:Landroid/graphics/Paint;

    const v1, -0xe0dbda

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getHeadHeight()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->d:I

    return v0
.end method

.method public getWaveHeight()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 69
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a:Landroid/graphics/Path;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->d:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->d:I

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->c:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->d:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 72
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setHeadHeight(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->d:I

    return-void
.end method

.method public setWaveColor(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setWaveHeight(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->c:I

    return-void
.end method
