.class public Lajz;
.super Landroid/graphics/drawable/Drawable;
.source "RippleDrawableCompat.java"

# interfaces
.implements Laks;
.implements Landroidx/core/graphics/drawable/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajz$a;
    }
.end annotation


# instance fields
.field private a:Lajz$a;


# direct methods
.method private constructor <init>(Lajz$a;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    iput-object p1, p0, Lajz;->a:Lajz$a;

    return-void
.end method

.method synthetic constructor <init>(Lajz$a;Lajz$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lajz;-><init>(Lajz$a;)V

    return-void
.end method

.method public constructor <init>(Lakp;)V
    .locals 2

    .line 58
    new-instance v0, Lajz$a;

    new-instance v1, Lakk;

    invoke-direct {v1, p1}, Lakk;-><init>(Lakp;)V

    invoke-direct {v0, v1}, Lajz$a;-><init>(Lakk;)V

    invoke-direct {p0, v0}, Lajz;-><init>(Lajz$a;)V

    return-void
.end method


# virtual methods
.method public a()Lajz;
    .locals 2

    .line 146
    new-instance v0, Lajz$a;

    iget-object v1, p0, Lajz;->a:Lajz$a;

    invoke-direct {v0, v1}, Lajz$a;-><init>(Lajz$a;)V

    .line 147
    iput-object v0, p0, Lajz;->a:Lajz$a;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-boolean v0, v0, Lajz$a;->b:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-object v0, v0, Lajz$a;->a:Lakk;

    invoke-virtual {v0, p1}, Lakk;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 140
    iget-object v0, p0, Lajz;->a:Lajz$a;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 163
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-object v0, v0, Lajz$a;->a:Lakk;

    invoke-virtual {v0}, Lakk;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lajz;->a()Lajz;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 134
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-object v0, v0, Lajz$a;->a:Lakk;

    invoke-virtual {v0, p1}, Lakk;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    .line 109
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 110
    iget-object v1, p0, Lajz;->a:Lajz$a;

    iget-object v1, v1, Lajz$a;->a:Lakk;

    invoke-virtual {v1, p1}, Lakk;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v0, v2

    .line 113
    :cond_0
    invoke-static {p1}, Laka;->a([I)Z

    move-result p1

    .line 116
    iget-object v1, p0, Lajz;->a:Lajz$a;

    iget-boolean v1, v1, Lajz$a;->b:Z

    if-eq v1, p1, :cond_1

    .line 117
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iput-boolean p1, v0, Lajz$a;->b:Z

    move v0, v2

    :cond_1
    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-object v0, v0, Lajz$a;->a:Lakk;

    invoke-virtual {v0, p1}, Lakk;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-object v0, v0, Lajz$a;->a:Lakk;

    invoke-virtual {v0, p1}, Lakk;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lakp;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-object v0, v0, Lajz$a;->a:Lakk;

    invoke-virtual {v0, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-object v0, v0, Lajz$a;->a:Lakk;

    invoke-virtual {v0, p1}, Lakk;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-object v0, v0, Lajz$a;->a:Lakk;

    invoke-virtual {v0, p1}, Lakk;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lajz;->a:Lajz$a;

    iget-object v0, v0, Lajz$a;->a:Lakk;

    invoke-virtual {v0, p1}, Lakk;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
