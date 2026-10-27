.class public Landroid/support/design/internal/NavigationMenuItemView;
.super Landroid/support/design/internal/ForegroundLinearLayout;
.source "NavigationMenuItemView.java"

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


# instance fields
.field private final accessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field private actionArea:Landroid/widget/FrameLayout;

.field checkable:Z

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private hasIconTintList:Z

.field private final iconSize:I

.field private iconTintList:Landroid/content/res/ColorStateList;

.field private itemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private needsEmptyIcon:Z

.field private final textView:Landroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance p2, Landroid/support/design/internal/NavigationMenuItemView$1;

    invoke-direct {p2, p0}, Landroid/support/design/internal/NavigationMenuItemView$1;-><init>(Landroid/support/design/internal/NavigationMenuItemView;)V

    iput-object p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->accessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 90
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setOrientation(I)V

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Landroid/support/design/internal/R$layout;->design_navigation_menu_item:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/design/internal/R$dimen;->design_navigation_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    .line 93
    sget p1, Landroid/support/design/internal/R$id;->design_menu_item_text:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 94
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 95
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    iget-object p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->accessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 96
    return-void
.end method

.method private adjustAppearance()V
    .locals 2

    .line 126
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->shouldExpandActionArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 131
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 132
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 138
    const/4 v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 139
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :cond_1
    :goto_0
    return-void
.end method

.method private createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 164
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 165
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    .line 167
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 169
    sget-object v2, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 170
    sget-object v0, Landroid/support/design/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 171
    return-object v1

    .line 173
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setActionView(Landroid/view/View;)V
    .locals 1

    .line 152
    if-eqz p1, :cond_1

    .line 153
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 154
    sget v0, Landroid/support/design/internal/R$id;->design_menu_item_action_area_stub:I

    .line 156
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 159
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 161
    :cond_1
    return-void
.end method

.method private shouldExpandActionArea()Z
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 121
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 122
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .line 178
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 0

    .line 100
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 102
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 104
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_1

    .line 105
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 109
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 111
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 116
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->adjustAppearance()V

    .line 117
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    .line 240
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/support/design/internal/ForegroundLinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 241
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    .line 244
    :cond_0
    return-object p1
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 145
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 148
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    return-void
.end method

.method public setCheckable(Z)V
    .locals 2

    .line 188
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 189
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->checkable:Z

    if-eq v0, p1, :cond_0

    .line 190
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->checkable:Z

    .line 191
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->accessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/16 v1, 0x800

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 194
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 198
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 199
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 200
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 1

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setPadding(IIII)V

    .line 270
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 207
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 208
    iget-boolean v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->hasIconTintList:Z

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 210
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 211
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 213
    :cond_1
    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    iget v2, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 214
    :cond_2
    iget-boolean v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    if-eqz v1, :cond_4

    .line 215
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    .line 216
    nop

    .line 218
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Landroid/support/design/internal/R$drawable;->navigation_empty_icon:I

    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 217
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 220
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    iget v2, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    :cond_3
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 226
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 273
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 274
    return-void
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 248
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    .line 249
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->hasIconTintList:Z

    .line 250
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :cond_1
    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    .line 266
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    .line 203
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 257
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 258
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 262
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 183
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 235
    const/4 v0, 0x1

    return v0
.end method
