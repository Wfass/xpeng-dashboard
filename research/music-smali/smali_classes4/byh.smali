.class public final Lbyh;
.super Lbyj;
.source "IndicatorView.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private a:Lbyp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbyh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILccc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lbyj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0}, Lbyh;->getMIndicatorOptions()Lbyu;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lbyt;->a(Landroid/content/Context;Landroid/util/AttributeSet;Lbyu;)V

    .line 50
    new-instance p1, Lbyp;

    invoke-virtual {p0}, Lbyh;->getMIndicatorOptions()Lbyu;

    move-result-object p2

    invoke-direct {p1, p2}, Lbyp;-><init>(Lbyu;)V

    iput-object p1, p0, Lbyh;->a:Lbyp;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILccc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 42
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 43
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lbyh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lbyh;->getMIndicatorOptions()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->a()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    .line 91
    invoke-virtual {p0}, Lbyh;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Lbyh;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lbyh;->getMIndicatorOptions()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->a()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    .line 93
    invoke-virtual {p0}, Lbyh;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Lbyh;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyDataChanged()V
    .locals 2

    .line 85
    new-instance v0, Lbyp;

    invoke-virtual {p0}, Lbyh;->getMIndicatorOptions()Lbyu;

    move-result-object v1

    invoke-direct {v0, v1}, Lbyp;-><init>(Lbyu;)V

    iput-object v0, p0, Lbyh;->a:Lbyp;

    .line 86
    invoke-super {p0}, Lbyj;->notifyDataChanged()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Lbyj;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-direct {p0, p1}, Lbyh;->a(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v0, p0, Lbyh;->a:Lbyp;

    invoke-virtual {v0, p1}, Lbyp;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 60
    invoke-super/range {p0 .. p5}, Lbyj;->onLayout(ZIIII)V

    .line 61
    iget-object v0, p0, Lbyh;->a:Lbyp;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lbyp;->a(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2}, Lbyj;->onMeasure(II)V

    .line 69
    iget-object v0, p0, Lbyh;->a:Lbyp;

    invoke-virtual {v0, p1, p2}, Lbyp;->a(II)Lbyl$b;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lbyl$b;->a()I

    move-result p2

    invoke-virtual {p1}, Lbyl$b;->b()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lbyh;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIndicatorOptions(Lbyu;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Lbyj;->setIndicatorOptions(Lbyu;)V

    .line 81
    iget-object v0, p0, Lbyh;->a:Lbyp;

    invoke-virtual {v0, p1}, Lbyp;->a(Lbyu;)V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lbyh;->getMIndicatorOptions()Lbyu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbyu;->a(I)V

    return-void
.end method
