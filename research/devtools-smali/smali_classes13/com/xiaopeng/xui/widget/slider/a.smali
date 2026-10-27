.class Lcom/xiaopeng/xui/widget/slider/a;
.super Landroid/graphics/drawable/Drawable;
.source "IndicatorDrawable.java"


# static fields
.field private static ajA:I

.field private static ajB:I

.field private static ajC:I

.field private static ajy:I

.field private static ajz:F


# instance fields
.field private Gs:I

.field private final ajD:Landroid/graphics/Paint;

.field ajE:Landroid/graphics/drawable/NinePatchDrawable;

.field ajF:Landroid/graphics/drawable/NinePatchDrawable;

.field ajG:Landroid/graphics/drawable/NinePatchDrawable;

.field ajH:Landroid/graphics/drawable/NinePatchDrawable;

.field private ajI:F

.field private ajJ:Ljava/lang/String;

.field private ajK:I

.field private ajL:Landroid/graphics/Rect;

.field private isEnabled:Z

.field private isNight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x74

    sput v0, Lcom/xiaopeng/xui/widget/slider/a;->ajy:I

    .line 29
    const/high16 v0, 0x41c00000    # 24.0f

    sput v0, Lcom/xiaopeng/xui/widget/slider/a;->ajz:F

    .line 30
    const/16 v0, 0x38

    sput v0, Lcom/xiaopeng/xui/widget/slider/a;->ajA:I

    .line 31
    const/16 v0, 0xa

    sput v0, Lcom/xiaopeng/xui/widget/slider/a;->ajB:I

    .line 32
    const/16 v0, 0x2a

    sput v0, Lcom/xiaopeng/xui/widget/slider/a;->ajC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajD:Landroid/graphics/Paint;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajJ:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajI:F

    sget v2, Lcom/xiaopeng/xui/widget/slider/a;->ajA:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/xiaopeng/xui/widget/slider/a;->ajB:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajI:F

    sget v4, Lcom/xiaopeng/xui/widget/slider/a;->ajA:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/xiaopeng/xui/widget/slider/a;->ajB:I

    add-int/lit8 v4, v4, 0x32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajD:Landroid/graphics/Paint;

    sget v1, Lcom/xiaopeng/xui/widget/slider/a;->ajz:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajD:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajD:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 51
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_slider_tag_day:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajE:Landroid/graphics/drawable/NinePatchDrawable;

    .line 52
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_slider_tag_night:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajF:Landroid/graphics/drawable/NinePatchDrawable;

    .line 53
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_slider_tag_day_disable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajG:Landroid/graphics/drawable/NinePatchDrawable;

    .line 54
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_slider_tag_night_disable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajH:Landroid/graphics/drawable/NinePatchDrawable;

    .line 55
    return-void
.end method

.method private rU()V
    .locals 5

    .line 112
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->Gs:I

    add-int/lit8 v0, v0, 0x32

    sget v1, Lcom/xiaopeng/xui/widget/slider/a;->ajA:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 113
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajI:F

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 114
    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajK:I

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajI:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v2

    .line 115
    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 118
    :cond_0
    cmpg-float v1, v3, v4

    if-gez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajK:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajK:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajI:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajI:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 125
    :goto_0
    return-void
.end method


# virtual methods
.method public a(FLjava/lang/String;ZI)V
    .locals 0

    .line 81
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/slider/a;->isNight:Z

    .line 82
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajJ:Ljava/lang/String;

    .line 83
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajI:F

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajD:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/a;->Gs:I

    .line 85
    iput p4, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajK:I

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/a;->rU()V

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/a;->invalidateSelf()V

    .line 88
    return-void
.end method

.method public a(Landroid/graphics/Canvas;ZZ)V
    .locals 0

    .line 106
    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/slider/a;->isNight:Z

    .line 107
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/slider/a;->isEnabled:Z

    .line 108
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/a;->draw(Landroid/graphics/Canvas;)V

    .line 109
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 59
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->isNight:Z

    if-eqz v0, :cond_1

    .line 60
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajF:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajF:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajH:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajH:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->isEnabled:Z

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajE:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajE:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajG:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajG:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajD:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->isEnabled:Z

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    const v1, 0x5cffffff

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajL:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/xiaopeng/xui/widget/slider/a;->ajC:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/a;->ajD:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 93
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 98
    return-void
.end method
