.class public Lbyt;
.super Ljava/lang/Object;
.source "AttrsController.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;Lbyu;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 35
    sget-object v0, Lbyi$a;->IndicatorView:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 36
    sget p1, Lbyi$a;->IndicatorView_vpi_slide_mode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 37
    sget v1, Lbyi$a;->IndicatorView_vpi_style:I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 38
    sget v2, Lbyi$a;->IndicatorView_vpi_slider_checked_color:I

    const-string v3, "#6C6D72"

    .line 39
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 38
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 40
    sget v3, Lbyi$a;->IndicatorView_vpi_slider_normal_color:I

    const-string v4, "#8C18171C"

    .line 41
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 40
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 42
    sget v4, Lbyi$a;->IndicatorView_vpi_orientation:I

    invoke-virtual {p0, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 43
    sget v4, Lbyi$a;->IndicatorView_vpi_slider_radius:I

    const/high16 v5, 0x41000000    # 8.0f

    .line 44
    invoke-static {v5}, Lbyv;->a(F)I

    move-result v5

    int-to-float v5, v5

    .line 43
    invoke-virtual {p0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 45
    invoke-virtual {p2, v2}, Lbyu;->h(I)V

    .line 46
    invoke-virtual {p2, v3}, Lbyu;->e(I)V

    .line 47
    invoke-virtual {p2, v0}, Lbyu;->a(I)V

    .line 48
    invoke-virtual {p2, v1}, Lbyu;->b(I)V

    .line 49
    invoke-virtual {p2, p1}, Lbyu;->c(I)V

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v4, p1

    .line 50
    invoke-virtual {p2, v4, v4}, Lbyu;->a(FF)V

    .line 51
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method
