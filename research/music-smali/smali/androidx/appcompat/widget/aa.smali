.class public Landroidx/appcompat/widget/aa;
.super Landroid/widget/ToggleButton;
.source "AppCompatToggleButton.java"

# interfaces
.implements Lgh;


# instance fields
.field private final a:Landroidx/appcompat/widget/e;

.field private final b:Landroidx/appcompat/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    .line 60
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/aa;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/widget/aa;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ao;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 69
    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/e;

    .line 70
    iget-object p1, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    .line 72
    new-instance p1, Landroidx/appcompat/widget/y;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/aa;->b:Landroidx/appcompat/widget/y;

    .line 73
    iget-object p1, p0, Landroidx/appcompat/widget/aa;->b:Landroidx/appcompat/widget/y;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/y;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()V

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/aa;->b:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 79
    iget-object v0, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 129
    iget-object v0, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
