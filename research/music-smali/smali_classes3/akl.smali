.class public Lakl;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# direct methods
.method static a()Lakg;
    .locals 1

    .line 43
    new-instance v0, Lako;

    invoke-direct {v0}, Lako;-><init>()V

    return-object v0
.end method

.method static a(I)Lakg;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 37
    invoke-static {}, Lakl;->a()Lakg;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    new-instance p0, Lakh;

    invoke-direct {p0}, Lakh;-><init>()V

    return-object p0

    .line 33
    :cond_1
    new-instance p0, Lako;

    invoke-direct {p0}, Lako;-><init>()V

    return-object p0
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    instance-of v1, v0, Lakk;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Lakk;

    invoke-static {p0, v0}, Lakl;->a(Landroid/view/View;Lakk;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 58
    instance-of v0, p0, Lakk;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lakk;

    invoke-virtual {p0, p1}, Lakk;->r(F)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Lakk;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Lakk;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/google/android/material/internal/u;->d(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Lakk;->q(F)V

    :cond_0
    return-void
.end method

.method static b()Laki;
    .locals 1

    .line 48
    new-instance v0, Laki;

    invoke-direct {v0}, Laki;-><init>()V

    return-object v0
.end method
