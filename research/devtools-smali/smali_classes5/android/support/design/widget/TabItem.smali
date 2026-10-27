.class public final Landroid/support/design/widget/TabItem;
.super Landroid/view/View;
.source "TabItem.java"


# instance fields
.field final customLayout:I

.field final icon:Landroid/graphics/drawable/Drawable;

.field final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget-object v0, Landroid/support/design/widget/R$styleable;->TabItem:[I

    .line 49
    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    .line 50
    sget p2, Landroid/support/design/widget/R$styleable;->TabItem_android_text:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/widget/TabItem;->text:Ljava/lang/CharSequence;

    .line 51
    sget p2, Landroid/support/design/widget/R$styleable;->TabItem_android_icon:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/widget/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 52
    sget p2, Landroid/support/design/widget/R$styleable;->TabItem_android_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/TabItem;->customLayout:I

    .line 53
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 54
    return-void
.end method
