.class public Lcom/android/car/media/common/a;
.super Ljava/lang/Object;
.source "ControlBarHelper.java"


# direct methods
.method private static synthetic a(ILandroid/widget/ProgressBar;Lcom/android/car/media/common/source/c;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2, p0}, Lcom/android/car/media/common/source/c;->a(I)I

    move-result p0

    .line 59
    :cond_0
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/lifecycle/n;Laid;Landroid/widget/ProgressBar;Z)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/16 p0, 0x8

    .line 45
    invoke-virtual {p3, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/car/media/common/f$c;->use_media_source_color_for_minimized_progress_bar:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/car/media/common/f$d;->minimized_progress_bar_highlight:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    if-eqz p4, :cond_2

    .line 54
    invoke-virtual {p2}, Laid;->b()Landroidx/lifecycle/LiveData;

    move-result-object p4

    new-instance v0, Lcom/android/car/media/common/-$$Lambda$a$8mK8ajpliOy4h-Nr4al3EjQxXIg;

    invoke-direct {v0, p0, p3}, Lcom/android/car/media/common/-$$Lambda$a$8mK8ajpliOy4h-Nr4al3EjQxXIg;-><init>(ILandroid/widget/ProgressBar;)V

    invoke-virtual {p4, p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 65
    :goto_0
    invoke-virtual {p2}, Laid;->g()Landroidx/lifecycle/LiveData;

    move-result-object p0

    new-instance p2, Lcom/android/car/media/common/-$$Lambda$a$JtucHw0rxfvEo2Jycbkc07cUYz8;

    invoke-direct {p2, p3}, Lcom/android/car/media/common/-$$Lambda$a$JtucHw0rxfvEo2Jycbkc07cUYz8;-><init>(Landroid/widget/ProgressBar;)V

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    return-void
.end method

.method private static synthetic a(Landroid/widget/ProgressBar;Laie;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Laie;->b()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 68
    invoke-virtual {p1}, Laie;->a()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public static synthetic lambda$8mK8ajpliOy4h-Nr4al3EjQxXIg(ILandroid/widget/ProgressBar;Lcom/android/car/media/common/source/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/car/media/common/a;->a(ILandroid/widget/ProgressBar;Lcom/android/car/media/common/source/c;)V

    return-void
.end method

.method public static synthetic lambda$JtucHw0rxfvEo2Jycbkc07cUYz8(Landroid/widget/ProgressBar;Laie;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/car/media/common/a;->a(Landroid/widget/ProgressBar;Laie;)V

    return-void
.end method
