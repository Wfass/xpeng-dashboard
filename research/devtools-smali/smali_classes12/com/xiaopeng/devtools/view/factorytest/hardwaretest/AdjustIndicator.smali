.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;
.super Landroid/view/View;
.source "AdjustIndicator.java"


# instance fields
.field private Gr:Landroid/graphics/Paint;

.field Gs:I

.field private Gt:I

.field private mContext:Landroid/content/Context;

.field private max:I

.field private paddingLeft:I

.field private paddingRight:I

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 p2, 0x0

    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->paddingLeft:I

    .line 22
    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->paddingRight:I

    .line 23
    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->max:I

    .line 24
    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->progress:I

    .line 25
    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gs:I

    .line 26
    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gt:I

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->mContext:Landroid/content/Context;

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gr:Landroid/graphics/Paint;

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gr:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gr:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gr:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gr:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/d/b;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->max:I

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->progress:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gt:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->paddingLeft:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->progress:I

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->paddingRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->paddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gs:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x6

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->max:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gr:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->progress:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gt:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->paddingLeft:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->progress:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gr:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 80
    :goto_0
    return-void
.end method

.method public r(II)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->paddingLeft:I

    .line 43
    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->paddingRight:I

    .line 44
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->max:I

    .line 57
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .line 47
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->progress:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gt:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gr:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gs:I

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->invalidate()V

    .line 53
    return-void
.end method

.method public setProgressScale(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->Gt:I

    .line 61
    return-void
.end method
