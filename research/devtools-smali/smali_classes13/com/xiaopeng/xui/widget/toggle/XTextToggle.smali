.class public Lcom/xiaopeng/xui/widget/toggle/XTextToggle;
.super Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;
.source "XTextToggle.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private akZ:Landroid/widget/CheckedTextView;

.field private ala:I

.field private alb:I

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    sget v0, Lcom/xiaopeng/xpui/R$style;->XToggleLayout_Fill_TextToggle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 41
    sget v0, Lcom/xiaopeng/xpui/R$style;->XToggleLayout_Fill_TextToggle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 49
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textSize:I

    const/16 p4, 0xf

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 50
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textSize:I

    invoke-static {p2, p4}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/b/b;

    move-result-object p4

    .line 51
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->abs:Lcom/xiaopeng/xui/view/a;

    new-instance v1, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$XTextToggle$u5RLTmPAwFkkmYvqtai-hkRRxzU;

    invoke-direct {v1, p0, p4}, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$XTextToggle$u5RLTmPAwFkkmYvqtai-hkRRxzU;-><init>(Lcom/xiaopeng/xui/widget/toggle/XTextToggle;Lcom/xiaopeng/xui/view/b/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/view/a;->a(Lcom/xiaopeng/xui/view/a$a;)V

    .line 56
    :cond_0
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textColor:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    .line 57
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textColor:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->ala:I

    .line 58
    new-instance v0, Landroid/widget/CheckedTextView;

    invoke-direct {v0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p4}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    int-to-float p3, p3

    invoke-virtual {p1, v1, p3}, Landroid/widget/CheckedTextView;->setTextSize(IF)V

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    const/16 p3, 0x10

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setGravity(I)V

    .line 62
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    const/16 p3, 0xd

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p3, p1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_drawableStart:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 67
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_drawablePadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 68
    if-eqz p1, :cond_1

    .line 69
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0, v0, v0}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 72
    :cond_1
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_drawableStart:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->alb:I

    .line 74
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textOn:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    .line 75
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textOff:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->se()V

    .line 77
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private synthetic a(Lcom/xiaopeng/xui/view/b/b;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic lambda$u5RLTmPAwFkkmYvqtai-hkRRxzU(Lcom/xiaopeng/xui/widget/toggle/XTextToggle;Lcom/xiaopeng/xui/view/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->a(Lcom/xiaopeng/xui/view/b/b;)V

    return-void
.end method

.method private se()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->isChecked()Z

    move-result v0

    .line 136
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected rg()V
    .locals 3

    .line 124
    iget v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->ala:I

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->ala:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->alb:I

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->alb:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->rg()V

    .line 132
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setChecked(Z)V

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->se()V

    .line 120
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->akZ:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    .line 114
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    .line 96
    return-void
.end method
