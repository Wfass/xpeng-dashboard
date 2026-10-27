.class public Landroid/support/design/chip/Chip;
.super Landroid/support/v7/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Landroid/support/design/chip/ChipDrawable$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/Chip$ChipTouchHelper;
    }
.end annotation


# static fields
.field private static final CLOSE_ICON_VIRTUAL_ID:I

.field private static final SELECTED_STATE:[I


# instance fields
.field private chipDrawable:Landroid/support/design/chip/ChipDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private closeIconFocused:Z

.field private closeIconHovered:Z

.field private closeIconPressed:Z

.field private deferredCheckedValue:Z

.field private focusedVirtualView:I

.field private onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private onCloseIconClickListener:Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private final touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/chip/Chip;->SELECTED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 126
    sget v0, Landroid/support/design/chip/R$attr;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    .line 132
    sget v0, Landroid/support/design/chip/R$style;->Widget_MaterialComponents_Chip_Action:I

    .line 133
    invoke-static {p1, p2, p3, v0}, Landroid/support/design/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/design/chip/ChipDrawable;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 137
    new-instance p1, Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-direct {p1, p0, p0}, Landroid/support/design/chip/Chip$ChipTouchHelper;-><init>(Landroid/support/design/chip/Chip;Landroid/support/design/chip/Chip;)V

    iput-object p1, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    .line 138
    iget-object p1, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 139
    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 141
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->initOutlineProvider()V

    .line 142
    iget-boolean p1, p0, Landroid/support/design/chip/Chip;->deferredCheckedValue:Z

    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/chip/Chip;)Landroid/support/design/chip/ChipDrawable;
    .locals 0

    .line 97
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/design/chip/Chip;)Z
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->hasCloseIcon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/support/design/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/design/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private applyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .locals 0
    .param p1    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    invoke-virtual {p1, p0}, Landroid/support/design/chip/ChipDrawable;->setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V

    .line 203
    return-void
.end method

.method private createCloseIconDrawableState()[I
    .locals 4

    .line 489
    nop

    .line 490
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 491
    nop

    .line 493
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eqz v3, :cond_1

    .line 494
    add-int/lit8 v0, v0, 0x1

    .line 496
    :cond_1
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eqz v3, :cond_2

    .line 497
    add-int/lit8 v0, v0, 0x1

    .line 499
    :cond_2
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v3, :cond_3

    .line 500
    add-int/lit8 v0, v0, 0x1

    .line 502
    :cond_3
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 503
    add-int/lit8 v0, v0, 0x1

    .line 506
    :cond_4
    new-array v0, v0, [I

    .line 507
    nop

    .line 509
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 510
    const v3, 0x101009e

    aput v3, v0, v1

    .line 511
    nop

    .line 513
    move v1, v2

    :cond_5
    iget-boolean v2, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eqz v2, :cond_6

    .line 514
    const v2, 0x101009c

    aput v2, v0, v1

    .line 515
    add-int/lit8 v1, v1, 0x1

    .line 517
    :cond_6
    iget-boolean v2, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eqz v2, :cond_7

    .line 518
    const v2, 0x1010367

    aput v2, v0, v1

    .line 519
    add-int/lit8 v1, v1, 0x1

    .line 521
    :cond_7
    iget-boolean v2, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v2, :cond_8

    .line 522
    const v2, 0x10100a7

    aput v2, v0, v1

    .line 523
    add-int/lit8 v1, v1, 0x1

    .line 525
    :cond_8
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 526
    const v2, 0x10100a1

    aput v2, v0, v1

    .line 527
    nop

    .line 529
    :cond_9
    return-object v0
.end method

.method private ensureFocus()V
    .locals 2

    .line 426
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 427
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 429
    :cond_0
    return-void
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 2

    .line 537
    iget-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 539
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    iget-object v1, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    .line 544
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    .line 548
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 549
    iget-object v1, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 550
    iget-object v0, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private hasCloseIcon()Z
    .locals 1

    .line 533
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initOutlineProvider()V
    .locals 2

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 147
    new-instance v0, Landroid/support/design/chip/Chip$1;

    invoke-direct {v0, p0}, Landroid/support/design/chip/Chip$1;-><init>(Landroid/support/design/chip/Chip;)V

    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 160
    :cond_0
    return-void
.end method

.method private moveFocus(Z)Z
    .locals 3

    .line 409
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->ensureFocus()V

    .line 410
    nop

    .line 411
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 412
    iget p1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-ne p1, v1, :cond_1

    .line 413
    invoke-direct {p0, v2}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 414
    goto :goto_0

    .line 417
    :cond_0
    iget p1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez p1, :cond_1

    .line 418
    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 419
    goto :goto_0

    .line 422
    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method private setCloseIconFocused(Z)V
    .locals 1

    .line 467
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eq v0, p1, :cond_0

    .line 468
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    .line 469
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    .line 471
    :cond_0
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 460
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eq v0, p1, :cond_0

    .line 461
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    .line 462
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    .line 464
    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 453
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eq v0, p1, :cond_0

    .line 454
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    .line 455
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    .line 457
    :cond_0
    return-void
.end method

.method private setFocusedVirtualView(I)V
    .locals 1

    .line 441
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-eq v0, p1, :cond_1

    .line 442
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez v0, :cond_0

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconFocused(Z)V

    .line 445
    :cond_0
    iput p1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    .line 446
    if-nez p1, :cond_1

    .line 447
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/support/design/chip/Chip;->setCloseIconFocused(Z)V

    .line 450
    :cond_1
    return-void
.end method

.method private unapplyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .locals 1
    .param p1    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/chip/ChipDrawable;->setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 330
    iget-object v0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/Chip$ChipTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 475
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 477
    nop

    .line 479
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCloseIconStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0}, Landroid/support/design/chip/Chip;->createCloseIconDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result v0

    goto :goto_0

    .line 483
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 486
    :cond_1
    return-void
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 903
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 623
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 655
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 1065
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipEndPadding()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 772
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 788
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipIconSize()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 639
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipMinHeight()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 953
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipStartPadding()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 672
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 688
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipStrokeWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 722
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 821
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 1049
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconEndPadding()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 854
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconSize()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 1033
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconStartPadding()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 838
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 433
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 438
    :goto_0
    return-void
.end method

.method public getHideMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 937
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getHideMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 985
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getIconEndPadding()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 969
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getIconStartPadding()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 705
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getShowMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 920
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getShowMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextAppearance()Landroid/support/design/resources/TextAppearance;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 739
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 1017
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getTextEndPadding()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 1001
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getTextStartPadding()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 870
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckedIconEnabled()Z
    .locals 1

    .line 886
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCheckedIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChipIconEnabled()Z
    .locals 1

    .line 755
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isChipIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCloseIconEnabled()Z
    .locals 1

    .line 804
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCloseIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onChipDrawableSizeChange()V
    .locals 2

    .line 216
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->requestLayout()V

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidateOutline()V

    .line 220
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    .line 207
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 208
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Landroid/support/design/chip/Chip;->SELECTED_STATE:[I

    invoke-static {p1, v0}, Landroid/support/design/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 211
    :cond_0
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 335
    if-eqz p1, :cond_0

    .line 337
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_0

    .line 339
    :cond_0
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 341
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 343
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 344
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 315
    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconHovered(Z)V

    .line 321
    goto :goto_0

    .line 317
    :cond_1
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconHovered(Z)V

    .line 318
    nop

    .line 325
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 351
    nop

    .line 352
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 359
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 360
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->moveFocus(Z)Z

    move-result v2

    goto :goto_1

    .line 354
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 355
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->moveFocus(Z)Z

    move-result v2

    goto :goto_1

    .line 365
    :cond_0
    :pswitch_2
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    packed-switch v0, :pswitch_data_1

    .line 374
    goto :goto_1

    .line 370
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performCloseIconClick()Z

    .line 371
    return v3

    .line 367
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performClick()Z

    .line 368
    return v3

    .line 378
    :cond_1
    nop

    .line 379
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    const/4 v0, 0x2

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    nop

    .line 384
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-eqz v0, :cond_7

    .line 385
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 387
    nop

    .line 389
    move-object v4, p0

    :cond_4
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 390
    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_4

    .line 391
    :cond_5
    if-eqz v4, :cond_6

    .line 392
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 393
    return v3

    .line 395
    :cond_6
    nop

    .line 400
    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    .line 401
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 402
    return v3

    .line 404
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 556
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    .line 559
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 278
    nop

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 281
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    .line 282
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 290
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v0, :cond_2

    .line 291
    if-nez v1, :cond_0

    .line 292
    invoke-direct {p0, v2}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    .line 294
    :cond_0
    goto :goto_1

    .line 298
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performCloseIconClick()Z

    .line 300
    nop

    .line 304
    move v0, v3

    goto :goto_0

    :cond_1
    :pswitch_2
    move v0, v2

    :goto_0
    invoke-direct {p0, v2}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    .line 305
    goto :goto_3

    .line 284
    :pswitch_3
    if-eqz v1, :cond_2

    .line 285
    invoke-direct {p0, v3}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    .line 286
    nop

    .line 309
    :goto_1
    move v0, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_4

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    goto :goto_5

    :cond_4
    :goto_4
    move v2, v3

    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performCloseIconClick()Z
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->playSoundEffect(I)V

    .line 264
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 266
    nop

    .line 271
    move v1, v2

    goto :goto_0

    .line 268
    :cond_0
    nop

    .line 271
    move v1, v0

    :goto_0
    iget-object v3, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {v3, v0, v2}, Landroid/support/design/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)Z

    .line 273
    return v1
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 880
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckable(Z)V

    .line 883
    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 874
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckableResource(I)V

    .line 877
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-nez v0, :cond_0

    .line 226
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->deferredCheckedValue:Z

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v0

    .line 229
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 231
    if-eq v0, p1, :cond_1

    .line 232
    iget-object v0, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 237
    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 913
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 916
    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 1

    .line 896
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconEnabled(Z)V

    .line 899
    :cond_0
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 890
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconEnabledResource(I)V

    .line 893
    :cond_0
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 907
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconResource(I)V

    .line 910
    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 633
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 636
    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 627
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColorResource(I)V

    .line 630
    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1

    .line 665
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 668
    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 659
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadiusResource(I)V

    .line 662
    :cond_0
    return-void
.end method

.method public setChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .locals 3
    .param p1    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eq v0, p1, :cond_1

    .line 174
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->unapplyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 175
    iput-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 176
    iget-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0, p1}, Landroid/support/design/chip/Chip;->applyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 178
    sget-boolean p1, Landroid/support/design/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_0

    .line 180
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 182
    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 187
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 188
    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/design/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 190
    iget-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_1
    :goto_0
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 1075
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 1078
    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1069
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipEndPaddingResource(I)V

    .line 1072
    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 782
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 785
    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 1

    .line 765
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconEnabled(Z)V

    .line 768
    :cond_0
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 759
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconEnabledResource(I)V

    .line 762
    :cond_0
    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 776
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconResource(I)V

    .line 779
    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 798
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconSize(F)V

    .line 801
    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 792
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconSizeResource(I)V

    .line 795
    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 649
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 652
    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 643
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeightResource(I)V

    .line 646
    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 963
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 966
    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 957
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStartPaddingResource(I)V

    .line 960
    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 682
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 685
    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 676
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColorResource(I)V

    .line 679
    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 698
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 701
    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 692
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidthResource(I)V

    .line 695
    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 732
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipText(Ljava/lang/CharSequence;)V

    .line 735
    :cond_0
    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 726
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipTextResource(I)V

    .line 729
    :cond_0
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 831
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 834
    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 1

    .line 814
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEnabled(Z)V

    .line 817
    :cond_0
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 808
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEnabledResource(I)V

    .line 811
    :cond_0
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 1059
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 1062
    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1053
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPaddingResource(I)V

    .line 1056
    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 825
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconResource(I)V

    .line 828
    :cond_0
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 864
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 867
    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 858
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSizeResource(I)V

    .line 861
    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 1043
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 1046
    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1037
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPaddingResource(I)V

    .line 1040
    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 848
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 851
    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 842
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTintResource(I)V

    .line 845
    :cond_0
    return-void
.end method

.method public setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 1
    .param p1    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 947
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 950
    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 941
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpecResource(I)V

    .line 944
    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 995
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 998
    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 989
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconEndPaddingResource(I)V

    .line 992
    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 979
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 982
    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 973
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconStartPaddingResource(I)V

    .line 976
    :cond_0
    return-void
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 244
    iput-object p1, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 245
    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 249
    iput-object p1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    .line 250
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 715
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 718
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 709
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setRippleColorResource(I)V

    .line 712
    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 1
    .param p1    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 930
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 933
    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 924
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpecResource(I)V

    .line 927
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/support/design/resources/TextAppearance;)V
    .locals 1
    .param p1    # Landroid/support/design/resources/TextAppearance;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 749
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextAppearance(Landroid/support/design/resources/TextAppearance;)V

    .line 752
    :cond_0
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 743
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 746
    :cond_0
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 1027
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 1030
    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1021
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextEndPaddingResource(I)V

    .line 1024
    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 1011
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 1014
    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1005
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextStartPaddingResource(I)V

    .line 1008
    :cond_0
    return-void
.end method
