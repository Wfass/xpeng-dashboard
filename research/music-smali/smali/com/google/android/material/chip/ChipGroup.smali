.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/d;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$d;,
        Lcom/google/android/material/chip/ChipGroup$a;,
        Lcom/google/android/material/chip/ChipGroup$b;,
        Lcom/google/android/material/chip/ChipGroup$c;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lcom/google/android/material/chip/ChipGroup$c;

.field private final g:Lcom/google/android/material/chip/ChipGroup$a;

.field private h:Lcom/google/android/material/chip/ChipGroup$d;

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    sget v0, Laiv$k;->Widget_MaterialComponents_ChipGroup:I

    sput v0, Lcom/google/android/material/chip/ChipGroup;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 114
    sget v0, Laiv$b;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 118
    sget v0, Lcom/google/android/material/chip/ChipGroup;->a:I

    invoke-static {p1, p2, p3, v0}, Lakt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-instance p1, Lcom/google/android/material/chip/ChipGroup$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/chip/ChipGroup$a;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->g:Lcom/google/android/material/chip/ChipGroup$a;

    .line 102
    new-instance p1, Lcom/google/android/material/chip/ChipGroup$d;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/chip/ChipGroup$d;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/chip/ChipGroup$d;

    const/4 p1, -0x1

    .line 106
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    sget-object v3, Laiv$l;->ChipGroup:[I

    sget v5, Lcom/google/android/material/chip/ChipGroup;->a:I

    new-array v6, v0, [I

    move-object v2, p2

    move v4, p3

    .line 123
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 126
    sget p3, Laiv$l;->ChipGroup_chipSpacing:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 127
    sget v1, Laiv$l;->ChipGroup_chipSpacingHorizontal:I

    .line 128
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 127
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 129
    sget v1, Laiv$l;->ChipGroup_chipSpacingVertical:I

    .line 130
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 129
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 131
    sget p3, Laiv$l;->ChipGroup_singleLine:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 132
    sget p3, Laiv$l;->ChipGroup_singleSelection:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 133
    sget p3, Laiv$l;->ChipGroup_selectionRequired:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSelectionRequired(Z)V

    .line 134
    sget p3, Laiv$l;->ChipGroup_checkedChip:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, p1, :cond_0

    .line 136
    iput p3, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    .line 139
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/chip/ChipGroup$d;

    invoke-super {p0, p1}, Lcom/google/android/material/internal/d;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    const/4 p1, 0x1

    .line 142
    invoke-static {p0, p1}, Lgj;->d(Landroid/view/View;I)V

    return-void
.end method

.method private a(IZ)V
    .locals 2

    .line 359
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    .line 361
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->f:Lcom/google/android/material/chip/ChipGroup$c;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 362
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$c;->a(Lcom/google/android/material/chip/ChipGroup;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    return p0
.end method

.method private b(IZ)V
    .locals 1

    .line 367
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 368
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    .line 370
    check-cast p1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    const/4 p1, 0x0

    .line 371
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$a;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->g:Lcom/google/android/material/chip/ChipGroup$a;

    return-object p0
.end method

.method private getChipCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 377
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 378
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private setCheckedId(I)V
    .locals 1

    const/4 v0, 0x1

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->a(IZ)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 4

    .line 391
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 395
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 396
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_2

    .line 397
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/chip/Chip;

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    const/4 v0, 0x0

    move v1, v0

    .line 333
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 334
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 335
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    .line 336
    check-cast v2, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    const/4 v0, -0x1

    .line 341
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 264
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 268
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 269
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    :cond_1
    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    .line 276
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 203
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_1

    .line 204
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 205
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 207
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    .line 209
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 213
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/internal/d;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 462
    invoke-super {p0}, Lcom/google/android/material/internal/d;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 181
    invoke-super {p0, p1}, Lcom/google/android/material/internal/d;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/google/android/material/chip/ChipGroup$b;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 176
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$b;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 164
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$b;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 170
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$b;

    invoke-direct {v0, p1}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCheckedChipIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 309
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 310
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    .line 311
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1

    .line 421
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->b:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1

    .line 441
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->c:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 192
    invoke-super {p0}, Lcom/google/android/material/internal/d;->onFinishInflate()V

    .line 195
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    .line 197
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 147
    invoke-super {p0, p1}, Lcom/google/android/material/internal/d;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 148
    invoke-static {p1}, Lgu;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lgu;

    move-result-object p1

    .line 150
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipGroup;->getChipCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getRowCount()I

    move-result v1

    const/4 v2, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    .line 152
    :goto_1
    invoke-static {v1, v0, v2, v3}, Lgu$b;->a(IIZI)Lgu$b;

    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Lgu;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 410
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1

    .line 426
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->b:I

    if-eq v0, p1, :cond_0

    .line 427
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->b:I

    .line 428
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setItemSpacing(I)V

    .line 429
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1

    .line 446
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->c:I

    if-eq v0, p1, :cond_0

    .line 447
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->c:I

    .line 448
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setLineSpacing(I)V

    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlexWrap(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$c;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->f:Lcom/google/android/material/chip/ChipGroup$c;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/chip/ChipGroup$d;

    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$d;->a(Lcom/google/android/material/chip/ChipGroup$d;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0

    .line 511
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->e:Z

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowDividerVertical(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSingleLine(I)V
    .locals 1

    .line 474
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 469
    invoke-super {p0, p1}, Lcom/google/android/material/internal/d;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eq v0, p1, :cond_0

    .line 489
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->a()V

    :cond_0
    return-void
.end method
