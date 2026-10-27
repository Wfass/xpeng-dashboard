.class public Landroidx/appcompat/widget/f;
.super Landroid/widget/Button;
.source "AppCompatButton.java"

# interfaces
.implements Landroidx/core/widget/b;
.implements Landroidx/core/widget/l;
.implements Lgh;


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/e;

.field private final mTextHelper:Landroidx/appcompat/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    sget v0, Le$a;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-static {p1}, Landroidx/appcompat/widget/aq;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/widget/f;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ao;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 79
    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/f;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    .line 80
    iget-object p1, p0, Landroidx/appcompat/widget/f;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    .line 82
    new-instance p1, Landroidx/appcompat/widget/y;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    .line 83
    iget-object p1, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/y;->a(Landroid/util/AttributeSet;I)V

    .line 84
    iget-object p1, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroidx/appcompat/widget/y;->b()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 161
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 162
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()V

    .line 165
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->b()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .line 329
    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 332
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->h()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .line 313
    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 316
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->g()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .line 297
    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 300
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->f()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 345
    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 348
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->i()[I

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 352
    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 279
    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 280
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 284
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->e()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 128
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

    .line 155
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 399
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->j()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 421
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->k()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 181
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 186
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 187
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 192
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 193
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 194
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/y;->a(ZIIII)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 212
    iget-object p1, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz p1, :cond_0

    sget-boolean p1, Landroidx/appcompat/widget/f;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroidx/appcompat/widget/y;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroidx/appcompat/widget/y;->c()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    .line 243
    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/y;->a(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    .line 261
    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y;->a([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    .line 224
    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 90
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 377
    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 376
    invoke-super {p0, p1}, Landroid/widget/Button;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 1

    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->a(Z)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mBackgroundTintHelper:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 387
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->a(Landroid/content/res/ColorStateList;)V

    .line 388
    iget-object p1, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroidx/appcompat/widget/y;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 409
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 410
    iget-object p1, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroidx/appcompat/widget/y;->b()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 172
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 173
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 200
    sget-boolean v0, Landroidx/appcompat/widget/f;->d:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->mTextHelper:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y;->a(IF)V

    :cond_1
    :goto_0
    return-void
.end method
