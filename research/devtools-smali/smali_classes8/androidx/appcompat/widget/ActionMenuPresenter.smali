.class Landroidx/appcompat/widget/ActionMenuPresenter;
.super Landroidx/appcompat/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/core/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 88
    sget v0, Landroidx/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroidx/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 74
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 84
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 89
    return-void
.end method

.method static synthetic access$000(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    return-object p0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 321
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 322
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 324
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 325
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 326
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 327
    instance-of v5, v4, Landroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 328
    invoke-interface {v5}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 329
    return-object v4

    .line 325
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :cond_2
    return-object v1
.end method


# virtual methods
.method public bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V
    .locals 1

    .line 211
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 213
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 214
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 215
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;)V

    .line 217
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez p1, :cond_0

    .line 218
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 220
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 221
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .line 381
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 382
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 383
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 280
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public flagActionItems()Z
    .locals 20

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 423
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    .line 425
    :cond_0
    const/4 v1, 0x0

    .line 426
    nop

    .line 429
    move v3, v2

    :goto_0
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    .line 430
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 431
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 432
    iget-object v7, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 434
    nop

    .line 435
    nop

    .line 436
    nop

    .line 437
    nop

    .line 438
    move v8, v2

    move v9, v8

    move v10, v9

    move v11, v4

    move v4, v10

    :goto_1
    if-ge v4, v3, :cond_4

    .line 439
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 440
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 441
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 442
    :cond_1
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 443
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 445
    :cond_2
    nop

    .line 447
    const/4 v9, 0x1

    :goto_2
    iget-boolean v12, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v12, :cond_3

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 450
    nop

    .line 438
    move v11, v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 455
    :cond_4
    iget-boolean v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_6

    if-nez v9, :cond_5

    add-int/2addr v10, v8

    if-le v10, v11, :cond_6

    .line 457
    :cond_5
    add-int/lit8 v11, v11, -0x1

    .line 459
    :cond_6
    sub-int/2addr v11, v8

    .line 461
    iget-object v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 462
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 464
    nop

    .line 465
    nop

    .line 466
    iget-boolean v8, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_7

    .line 467
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v8, v5, v8

    .line 468
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    rem-int v9, v5, v9

    .line 469
    iget v10, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int/2addr v9, v8

    add-int/2addr v9, v10

    goto :goto_3

    .line 473
    :cond_7
    move v8, v2

    move v9, v8

    :goto_3
    move v13, v2

    move v10, v5

    move v5, v13

    :goto_4
    if-ge v5, v3, :cond_1e

    .line 474
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 476
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 477
    iget-object v15, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v14, v15, v7}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 478
    iget-object v12, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v12, :cond_8

    .line 479
    iput-object v15, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 481
    :cond_8
    iget-boolean v12, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v12, :cond_9

    .line 482
    invoke-static {v15, v9, v8, v6, v2}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v12

    sub-int/2addr v8, v12

    goto :goto_5

    .line 485
    :cond_9
    invoke-virtual {v15, v6, v6}, Landroid/view/View;->measure(II)V

    .line 487
    :goto_5
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 488
    sub-int/2addr v10, v12

    .line 489
    if-nez v13, :cond_a

    .line 490
    nop

    .line 492
    move v13, v12

    :cond_a
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v12

    .line 493
    if-eqz v12, :cond_b

    .line 494
    const/4 v15, 0x1

    invoke-virtual {v4, v12, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_6

    .line 496
    :cond_b
    const/4 v15, 0x1

    :goto_6
    invoke-virtual {v14, v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 497
    nop

    .line 473
    move v0, v2

    move/from16 v17, v3

    goto/16 :goto_e

    .line 497
    :cond_c
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 500
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v12

    .line 501
    invoke-virtual {v4, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    .line 502
    if-gtz v11, :cond_d

    if-eqz v15, :cond_f

    :cond_d
    if-lez v10, :cond_f

    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_e

    if-lez v8, :cond_f

    .line 505
    :cond_e
    const/4 v2, 0x1

    goto :goto_7

    .line 502
    :cond_f
    nop

    .line 505
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_17

    .line 506
    move/from16 v16, v2

    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v14, v2, v7}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 507
    move/from16 v17, v3

    iget-object v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v3, :cond_10

    .line 508
    iput-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 510
    :cond_10
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_12

    .line 511
    const/4 v3, 0x0

    invoke-static {v2, v9, v8, v6, v3}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v18

    .line 513
    sub-int v8, v8, v18

    .line 514
    if-nez v18, :cond_11

    .line 515
    nop

    .line 517
    const/16 v16, 0x0

    :cond_11
    goto :goto_8

    .line 518
    :cond_12
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 520
    :goto_8
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 521
    sub-int/2addr v10, v2

    .line 522
    if-nez v13, :cond_13

    .line 523
    nop

    .line 526
    move v13, v2

    :cond_13
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_15

    .line 527
    if-ltz v10, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    and-int v2, v16, v2

    goto :goto_b

    .line 530
    :cond_15
    add-int v2, v10, v13

    if-lez v2, :cond_16

    const/4 v2, 0x1

    goto :goto_a

    :cond_16
    const/4 v2, 0x0

    :goto_a
    and-int v2, v16, v2

    goto :goto_b

    .line 534
    :cond_17
    move/from16 v16, v2

    move/from16 v17, v3

    :goto_b
    if-eqz v2, :cond_18

    if-eqz v12, :cond_18

    .line 535
    const/4 v3, 0x1

    invoke-virtual {v4, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_d

    .line 536
    :cond_18
    if-eqz v15, :cond_1b

    .line 538
    const/4 v3, 0x0

    invoke-virtual {v4, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 539
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v5, :cond_1b

    .line 540
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 541
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, v12, :cond_1a

    .line 543
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-eqz v0, :cond_19

    add-int/lit8 v11, v11, 0x1

    .line 544
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 539
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_c

    .line 549
    :cond_1b
    :goto_d
    if-eqz v2, :cond_1c

    add-int/lit8 v11, v11, -0x1

    .line 551
    :cond_1c
    invoke-virtual {v14, v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 552
    nop

    .line 473
    const/4 v0, 0x0

    goto :goto_e

    .line 554
    :cond_1d
    move/from16 v17, v3

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 473
    :goto_e
    add-int/lit8 v5, v5, 0x1

    move v2, v0

    move/from16 v3, v17

    move-object/from16 v0, p0

    goto/16 :goto_4

    .line 557
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 195
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 203
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 204
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_3
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 186
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object p1

    .line 187
    if-eq v0, p1, :cond_0

    .line 188
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 190
    :cond_0
    return-object p1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 175
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 180
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .line 362
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 365
    return v1

    .line 368
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 369
    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->dismiss()V

    .line 371
    return v1

    .line 373
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hideSubMenus()Z
    .locals 1

    .line 392
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 394
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 97
    invoke-static {p1}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object p1

    .line 98
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 102
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 107
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    .line 111
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 112
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v0, :cond_4

    .line 114
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 115
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 120
    :cond_3
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 121
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2, v0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 123
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 125
    :cond_5
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 128
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 130
    const/high16 p1, 0x42600000    # 56.0f

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 133
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 134
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 407
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 403
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 562
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 563
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 564
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 137
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    .line 140
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    .line 141
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 575
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    .line 576
    return-void

    .line 579
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 580
    iget v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v0, :cond_1

    .line 581
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 582
    if-eqz p1, :cond_1

    .line 583
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 584
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    .line 587
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 568
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 569
    iget v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 570
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 7

    .line 285
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 287
    :cond_0
    nop

    .line 288
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 289
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/SubMenuBuilder;

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 292
    if-nez v0, :cond_2

    .line 297
    return v1

    .line 300
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 302
    nop

    .line 303
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->size()I

    move-result v2

    .line 304
    move v3, v1

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    .line 305
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 306
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 307
    nop

    .line 308
    nop

    .line 312
    move v1, v4

    goto :goto_2

    .line 304
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 312
    :cond_4
    :goto_2
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 313
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 314
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 316
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    .line 317
    return v4
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 1

    .line 591
    if-eqz p1, :cond_0

    .line 593
    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    goto :goto_0

    .line 594
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    .line 595
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 597
    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 163
    return-void
.end method

.method public setItemLimit(I)V
    .locals 0

    .line 157
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    .line 158
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 159
    return-void
.end method

.method public setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    .line 600
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 601
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 602
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 170
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 172
    :goto_0
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 153
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 154
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 0

    .line 146
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 147
    iput-boolean p2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 148
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 149
    return-void
.end method

.method public shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 225
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p1

    return p1
.end method

.method public showOverflowMenu()Z
    .locals 7

    .line 340
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 341
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v5, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 343
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 345
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 349
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    .line 351
    const/4 v0, 0x1

    return v0

    .line 353
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 230
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 232
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 234
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 237
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 238
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_0

    .line 240
    invoke-virtual {v3, p0}, Landroidx/core/view/ActionProvider;->setSubUiVisibilityListener(Landroidx/core/view/ActionProvider$SubUiVisibilityListener;)V

    .line 237
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 246
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 248
    :goto_1
    nop

    .line 249
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 250
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 251
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 252
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    .line 258
    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    .line 254
    :cond_3
    if-lez v1, :cond_4

    .line 258
    move v0, v2

    goto :goto_2

    .line 254
    :cond_4
    nop

    .line 258
    :cond_5
    :goto_2
    if-eqz v0, :cond_9

    .line 259
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez p1, :cond_6

    .line 260
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 262
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 263
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eq p1, v0, :cond_8

    .line 264
    if-eqz p1, :cond_7

    .line 265
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 268
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    :cond_8
    goto :goto_3

    :cond_9
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-ne p1, v0, :cond_a

    .line 271
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    :cond_a
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 275
    return-void
.end method
