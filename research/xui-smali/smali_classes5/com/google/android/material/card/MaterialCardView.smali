.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source "MaterialCardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    sget v0, Lcom/google/android/material/R$attr;->materialCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialCardView:[I

    sget v1, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CardView:I

    .line 51
    invoke-static {p1, p2, v0, p3, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "attributes":Landroid/content/res/TypedArray;
    new-instance v1, Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-direct {v1, p0}, Lcom/google/android/material/card/MaterialCardViewHelper;-><init>(Lcom/google/android/material/card/MaterialCardView;)V

    .line 60
    .local v1, "cardViewHelper":Lcom/google/android/material/card/MaterialCardViewHelper;
    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method
