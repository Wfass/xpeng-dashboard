.class public Landroid/support/design/chip/ChipGroup;
.super Lcom/google/android/flexbox/FlexboxLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Landroid/support/design/chip/ChipGroup$CheckedStateTracker;,
        Landroid/support/design/chip/ChipGroup$SpacingDrawable;,
        Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checkedId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final checkedStateTracker:Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

.field private chipSpacingHorizontal:I
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private chipSpacingVertical:I
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

.field private protectFromCheckedChange:Z

.field private singleLine:Z

.field private singleSelection:Z

.field private final spacingDrawable:Landroid/support/design/chip/ChipGroup$SpacingDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 88
    sget v0, Landroid/support/design/chip/R$attr;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Landroid/support/design/chip/ChipGroup$SpacingDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/chip/ChipGroup$SpacingDrawable;-><init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipGroup;->spacingDrawable:Landroid/support/design/chip/ChipGroup$SpacingDrawable;

    .line 76
    new-instance v0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;-><init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipGroup;->checkedStateTracker:Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    .line 77
    new-instance v0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipGroup;->passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 94
    sget-object v2, Landroid/support/design/chip/R$styleable;->ChipGroup:[I

    sget v3, Landroid/support/design/chip/R$style;->Widget_MaterialComponents_ChipGroup:I

    .line 95
    invoke-static {p1, p2, v2, p3, v3}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 102
    sget p2, Landroid/support/design/chip/R$styleable;->ChipGroup_chipSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 103
    sget p3, Landroid/support/design/chip/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    .line 104
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 103
    invoke-virtual {p0, p3}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 105
    sget p3, Landroid/support/design/chip/R$styleable;->ChipGroup_chipSpacingVertical:I

    .line 106
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 105
    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 107
    sget p2, Landroid/support/design/chip/R$styleable;->ChipGroup_singleLine:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipGroup;->setSingleLine(Z)V

    .line 108
    sget p2, Landroid/support/design/chip/R$styleable;->ChipGroup_singleSelection:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipGroup;->setSingleSelection(Z)V

    .line 109
    sget p2, Landroid/support/design/chip/R$styleable;->ChipGroup_checkedChip:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 110
    if-eq p2, v0, :cond_0

    .line 111
    iput p2, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    iget-object p1, p0, Landroid/support/design/chip/ChipGroup;->spacingDrawable:Landroid/support/design/chip/ChipGroup$SpacingDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setShowDivider(I)V

    .line 119
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setWillNotDraw(Z)V

    .line 121
    iget-object p1, p0, Landroid/support/design/chip/ChipGroup;->passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 122
    return-void
.end method

.method static synthetic access$1000(Landroid/support/design/chip/ChipGroup;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/design/chip/ChipGroup;)Landroid/support/design/chip/ChipGroup$CheckedStateTracker;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/support/design/chip/ChipGroup;->checkedStateTracker:Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/design/chip/ChipGroup;)I
    .locals 0

    .line 52
    iget p0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    return p0
.end method

.method static synthetic access$500(Landroid/support/design/chip/ChipGroup;)I
    .locals 0

    .line 52
    iget p0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    return p0
.end method

.method static synthetic access$600(Landroid/support/design/chip/ChipGroup;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    return p0
.end method

.method static synthetic access$700(Landroid/support/design/chip/ChipGroup;)I
    .locals 0

    .line 52
    iget p0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    return p0
.end method

.method static synthetic access$800(Landroid/support/design/chip/ChipGroup;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    return p0
.end method

.method static synthetic access$900(Landroid/support/design/chip/ChipGroup;IZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method private setCheckedId(I)V
    .locals 1

    .line 269
    iput p1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    .line 271
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/support/design/chip/ChipGroup;I)V

    .line 274
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 277
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 278
    instance-of v0, p1, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 280
    check-cast p1, Landroid/support/design/chip/Chip;

    invoke-virtual {p1, p2}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    .line 281
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 143
    instance-of v0, p1, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_1

    .line 144
    move-object v0, p1

    check-cast v0, Landroid/support/design/chip/Chip;

    .line 145
    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget v1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v1, :cond_0

    .line 147
    iget v1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 149
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 153
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 154
    return-void
.end method

.method public check(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 209
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    if-ne p1, v0, :cond_0

    .line 210
    return-void

    .line 213
    :cond_0
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_1

    .line 214
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 217
    :cond_1
    if-eq p1, v1, :cond_2

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 221
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 222
    return-void
.end method

.method public clearCheck()V
    .locals 4

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 247
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 248
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 249
    instance-of v3, v2, Landroid/support/design/chip/Chip;

    if-eqz v3, :cond_0

    .line 250
    check-cast v2, Landroid/support/design/chip/Chip;

    invoke-virtual {v2, v0}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    .line 247
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    iput-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 255
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 256
    return-void
.end method

.method public getCheckedChipId()I
    .locals 1
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .line 235
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .line 299
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .line 318
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    return v0
.end method

.method public isSingleLine()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleLine:Z

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/google/android/flexbox/FlexboxLayout;->onFinishInflate()V

    .line 135
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 136
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 137
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 287
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 288
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 289
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 304
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    if-eq v0, p1, :cond_0

    .line 305
    iput p1, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 306
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->requestLayout()V

    .line 308
    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 312
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 313
    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 293
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacing(I)V

    .line 294
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 323
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    if-eq v0, p1, :cond_0

    .line 324
    iput p1, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    .line 325
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->requestLayout()V

    .line 327
    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 331
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 332
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->spacingDrawable:Landroid/support/design/chip/ChipGroup$SpacingDrawable;

    if-ne p1, v0, :cond_0

    .line 162
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 163
    return-void

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables not allowed. ChipGroup uses divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 167
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->spacingDrawable:Landroid/support/design/chip/ChipGroup$SpacingDrawable;

    if-ne p1, v0, :cond_0

    .line 171
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables not allowed. ChipGroup uses divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlexWrap(I)V
    .locals 1

    .line 194
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;)V
    .locals 0

    .line 265
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup;->onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    .line 266
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$302(Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 128
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1

    .line 176
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 180
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerHorizontal(I)V

    .line 181
    return-void

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes not allowed. ChipGroup uses divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowDividerVertical(I)V
    .locals 1

    .line 185
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 189
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerVertical(I)V

    .line 190
    return-void

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes not allowed. ChipGroup uses divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSingleLine(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 347
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setSingleLine(Z)V

    .line 348
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Landroid/support/design/chip/ChipGroup;->singleLine:Z

    .line 342
    xor-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setFlexWrap(I)V

    .line 343
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 374
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setSingleSelection(Z)V

    .line 375
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    .line 361
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eq v0, p1, :cond_0

    .line 362
    iput-boolean p1, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    .line 364
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->clearCheck()V

    .line 366
    :cond_0
    return-void
.end method
