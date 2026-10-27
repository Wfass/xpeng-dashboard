.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/FlexboxLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;,
        Lcom/google/android/material/chip/ChipGroup$SpacingDrawable;,
        Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checkedId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

.field private chipSpacingHorizontal:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private chipSpacingVertical:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

.field private protectFromCheckedChange:Z

.field private singleLine:Z

.field private singleSelection:Z

.field private final spacingDrawable:Lcom/google/android/material/chip/ChipGroup$SpacingDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    sget v0, Lcom/google/android/material/R$attr;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$SpacingDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$SpacingDrawable;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->spacingDrawable:Lcom/google/android/material/chip/ChipGroup$SpacingDrawable;

    .line 78
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    .line 79
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 96
    sget-object v2, Lcom/google/android/material/R$styleable;->ChipGroup:[I

    sget v3, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ChipGroup:I

    .line 97
    invoke-static {p1, p2, v2, p3, v3}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 104
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacing:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 105
    .local v3, "chipSpacing":I
    sget v4, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    .line 106
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 105
    invoke-virtual {p0, v4}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 107
    sget v4, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingVertical:I

    .line 108
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 107
    invoke-virtual {p0, v4}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 109
    sget v4, Lcom/google/android/material/R$styleable;->ChipGroup_singleLine:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 110
    sget v4, Lcom/google/android/material/R$styleable;->ChipGroup_singleSelection:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 111
    sget v1, Lcom/google/android/material/R$styleable;->ChipGroup_checkedChip:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 112
    .local v1, "checkedChip":I
    if-eq v1, v0, :cond_0

    .line 113
    iput v1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 116
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->spacingDrawable:Lcom/google/android/material/chip/ChipGroup$SpacingDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setShowDivider(I)V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setWillNotDraw(Z)V

    .line 123
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Lcom/google/android/material/internal/FlexboxLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 124
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .line 54
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .line 54
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .line 54
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .line 54
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .line 54
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .line 54
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method private setCheckedId(I)V
    .locals 1
    .param p1, "checkedId"    # I

    .line 271
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 273
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;I)V

    .line 276
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "checked"    # Z

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "checkedView":Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/material/chip/Chip;

    if-eqz v1, :cond_0

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 282
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 285
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 145
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_1

    .line 146
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 147
    .local v0, "chip":Lcom/google/android/material/chip/Chip;
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v1, :cond_0

    .line 149
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 155
    .end local v0    # "chip":Lcom/google/android/material/chip/Chip;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 211
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    if-ne p1, v0, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_1

    .line 216
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 219
    :cond_1
    if-eq p1, v1, :cond_2

    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 223
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 224
    return-void
.end method

.method public clearCheck()V
    .locals 4

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 249
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 250
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    .line 252
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 249
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 257
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 258
    return-void
.end method

.method public getCheckedChipId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 237
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 301
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 320
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    return v0
.end method

.method public isSingleLine()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleLine:Z

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 134
    invoke-super {p0}, Lcom/google/android/material/internal/FlexboxLayout;->onFinishInflate()V

    .line 137
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 138
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 139
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0
    .param p1, "chipSpacing"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 291
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1
    .param p1, "chipSpacingHorizontal"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 306
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    if-eq v0, p1, :cond_0

    .line 307
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 308
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 310
    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 314
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 315
    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 295
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    .line 296
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1
    .param p1, "chipSpacingVertical"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 325
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    if-eq v0, p1, :cond_0

    .line 326
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    .line 327
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 329
    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 333
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 334
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 160
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->spacingDrawable:Lcom/google/android/material/chip/ChipGroup$SpacingDrawable;

    if-ne p1, v0, :cond_0

    .line 164
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 165
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables not allowed. ChipGroup uses divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 169
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->spacingDrawable:Lcom/google/android/material/chip/ChipGroup$SpacingDrawable;

    if-ne p1, v0, :cond_0

    .line 173
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 174
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables not allowed. ChipGroup uses divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlexWrap(I)V
    .locals 2
    .param p1, "flexWrap"    # I

    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    .line 267
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    .line 268
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 129
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$302(Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 130
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 2
    .param p1, "dividerMode"    # I

    .line 178
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 182
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setShowDividerHorizontal(I)V

    .line 183
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes not allowed. ChipGroup uses divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowDividerVertical(I)V
    .locals 2
    .param p1, "dividerMode"    # I

    .line 187
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 191
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setShowDividerVertical(I)V

    .line 192
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes not allowed. ChipGroup uses divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSingleLine(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 349
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 350
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z

    .line 343
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->singleLine:Z

    .line 344
    xor-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lcom/google/android/material/internal/FlexboxLayout;->setFlexWrap(I)V

    .line 345
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 376
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 377
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1
    .param p1, "singleSelection"    # Z

    .line 363
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eq v0, p1, :cond_0

    .line 364
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 366
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->clearCheck()V

    .line 368
    :cond_0
    return-void
.end method
