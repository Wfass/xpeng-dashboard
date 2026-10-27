.class public Lcom/xiaopeng/musicradio/utils/w;
.super Ljava/lang/Object;
.source "DrawableUtil.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
