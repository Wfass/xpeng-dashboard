.class public Landroid/support/design/internal/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private final defaultMargin:I

.field private icon:Landroid/widget/ImageView;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private isShifting:Z

.field private itemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private itemPosition:I

.field private labelVisibilityMode:I

.field private final largeLabel:Landroid/widget/TextView;

.field private scaleDownFactor:F

.field private scaleUpFactor:F

.field private shiftAmount:F

.field private final smallLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 p2, -0x1

    iput p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemPosition:I

    .line 80
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Landroid/support/design/internal/R$layout;->design_bottom_navigation_item:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    sget p1, Landroid/support/design/internal/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setBackgroundResource(I)V

    .line 84
    sget p1, Landroid/support/design/internal/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    .line 86
    sget p1, Landroid/support/design/internal/R$id;->icon:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 87
    sget p1, Landroid/support/design/internal/R$id;->smallLabel:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 88
    sget p1, Landroid/support/design/internal/R$id;->largeLabel:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/support/design/internal/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 90
    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .locals 2

    .line 315
    sub-float v0, p1, p2

    iput v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->shiftAmount:F

    .line 316
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, v0, p2

    div-float/2addr v1, p1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleUpFactor:F

    .line 317
    mul-float/2addr v0, p1

    div-float/2addr v0, p2

    iput v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleDownFactor:F

    .line 318
    return-void
.end method

.method private setViewLayoutParams(Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 223
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 224
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void
.end method

.method private setViewValues(Landroid/view/View;FFI)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 229
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 230
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 231
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 232
    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .line 111
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemPosition:I

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 0

    .line 94
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 95
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setCheckable(Z)V

    .line 96
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setEnabled(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setId(I)V

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    .line 251
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 252
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    .line 255
    :cond_0
    return-object p1
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    .line 150
    return-void
.end method

.method public setChecked(Z)V
    .locals 7

    .line 154
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 155
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 156
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 157
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 159
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->labelVisibilityMode:I

    const/16 v1, 0x11

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/16 v4, 0x31

    const/4 v5, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 209
    :pswitch_0
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 210
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    goto/16 :goto_2

    .line 196
    :pswitch_1
    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1, v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 199
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v6, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 200
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleUpFactor:F

    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleUpFactor:F

    invoke-direct {p0, p1, v0, v1, v5}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto/16 :goto_2

    .line 202
    :cond_0
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, p1, v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 203
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleDownFactor:F

    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleDownFactor:F

    invoke-direct {p0, p1, v0, v1, v5}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 204
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v6, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 206
    goto/16 :goto_2

    .line 185
    :pswitch_2
    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, p1, v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 187
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v6, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 190
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2, v2, v5}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 192
    :goto_0
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    goto :goto_2

    .line 161
    :pswitch_3
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->isShifting:Z

    if-eqz v0, :cond_3

    .line 162
    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, p1, v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 164
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v6, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_1

    .line 166
    :cond_2
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 167
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2, v2, v5}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 169
    :goto_1
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 171
    :cond_3
    if-eqz p1, :cond_4

    .line 172
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1, v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 174
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v6, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 175
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleUpFactor:F

    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleUpFactor:F

    invoke-direct {p0, p1, v0, v1, v5}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_2

    .line 177
    :cond_4
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, p1, v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 178
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleDownFactor:F

    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->scaleDownFactor:F

    invoke-direct {p0, p1, v0, v1, v5}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 179
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v6, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 182
    nop

    .line 218
    :goto_2
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    .line 219
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 241
    if-eqz p1, :cond_0

    .line 242
    nop

    .line 243
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object p1

    .line 242
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    goto :goto_0

    .line 245
    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    .line 247
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 263
    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 265
    if-nez v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 267
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 269
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 293
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 294
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 283
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 284
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    .line 321
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 323
    :goto_0
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 107
    iput p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemPosition:I

    .line 108
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 126
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->labelVisibilityMode:I

    if-eq v0, p1, :cond_1

    .line 127
    iput p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->labelVisibilityMode:I

    .line 129
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    :goto_0
    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 134
    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    .line 115
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->isShifting:Z

    if-eq v0, p1, :cond_1

    .line 116
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->isShifting:Z

    .line 118
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    :goto_0
    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    .line 259
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 303
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 304
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 305
    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 298
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 299
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 300
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 308
    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 310
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 312
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 279
    const/4 v0, 0x1

    return v0
.end method
