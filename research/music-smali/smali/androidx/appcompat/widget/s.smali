.class public Landroidx/appcompat/widget/s;
.super Landroid/widget/RadioButton;
.source "AppCompatRadioButton.java"

# interfaces
.implements Landroidx/core/widget/k;
.implements Lgh;


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/e;

.field private final mCompoundButtonHelper:Landroidx/appcompat/widget/i;

.field private final mTextHelper:Landroidx/appcompat/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    sget v0, Le$a;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-static {p1}, Landroidx/appcompat/widget/aq;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p0}, Landroidx/appcompat/widget/s;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ao;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 73
    new-instance p1, Landroidx/appcompat/widget/i;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/i;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/widget/s;->mCompoundButtonHelper:Landroidx/appcompat/widget/i;

    .line 74
    iget-object p1, p0, Landroidx/appcompat/widget/s;->mCompoundButtonHelper:Landroidx/appcompat/widget/i;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/i;->a(Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    .line 77
    iget-object p1, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    .line 79
    new-instance p1, Landroidx/appcompat/widget/y;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/y;

    .line 80
    iget-object p1, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/y;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 228
    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()V

    .line 232
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->b()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 99
    iget-object v1, p0, Landroidx/appcompat/widget/s;->mCompoundButtonHelper:Landroidx/appcompat/widget/i;

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/i;->a(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 179
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

    .line 206
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mCompoundButtonHelper:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroidx/appcompat/widget/i;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mCompoundButtonHelper:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroidx/appcompat/widget/i;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 212
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroidx/appcompat/widget/s;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/s;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object p1, p0, Landroidx/appcompat/widget/s;->mCompoundButtonHelper:Landroidx/appcompat/widget/i;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroidx/appcompat/widget/i;->c()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mCompoundButtonHelper:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/s;->mCompoundButtonHelper:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
