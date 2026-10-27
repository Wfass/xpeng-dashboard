.class public Landroid/support/design/card/MaterialCardView;
.super Landroid/support/v7/widget/CardView;
.source "MaterialCardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    sget v0, Landroid/support/design/card/R$attr;->materialCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Landroid/support/design/card/R$styleable;->MaterialCardView:[I

    sget v1, Landroid/support/design/card/R$style;->Widget_MaterialComponents_CardView:I

    .line 49
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    new-instance p2, Landroid/support/design/card/MaterialCardViewHelper;

    invoke-direct {p2, p0}, Landroid/support/design/card/MaterialCardViewHelper;-><init>(Landroid/support/design/card/MaterialCardView;)V

    .line 58
    invoke-virtual {p2, p1}, Landroid/support/design/card/MaterialCardViewHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method
