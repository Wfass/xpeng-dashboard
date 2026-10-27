.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I = 0x3

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuPresenter;

.field private updateSuspended:Z


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .locals 0

    .line 368
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 364
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 369
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 370
    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .locals 2

    .line 544
    :goto_0
    if-ge p1, p2, :cond_0

    .line 545
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 546
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 544
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 548
    :cond_0
    return-void
.end method

.method private prepareMenuItems()V
    .locals 17

    .line 475
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    if-eqz v1, :cond_0

    .line 476
    return-void

    .line 478
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 479
    iget-object v2, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 480
    iget-object v2, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    invoke-direct {v3}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    const/4 v2, -0x1

    .line 483
    nop

    .line 484
    nop

    .line 485
    iget-object v3, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v2, v3, :cond_f

    .line 486
    iget-object v8, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v8, v8, Landroid/support/design/internal/NavigationMenuPresenter;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 487
    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 488
    invoke-virtual {v0, v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 490
    :cond_1
    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 491
    invoke-virtual {v8, v4}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 493
    :cond_2
    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 494
    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 495
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 496
    if-eqz v2, :cond_3

    .line 497
    iget-object v10, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v11, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    iget-object v12, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v12, v12, Landroid/support/design/internal/NavigationMenuPresenter;->paddingSeparator:I

    invoke-direct {v11, v12, v4}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_3
    iget-object v10, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v11, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-direct {v11, v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    nop

    .line 501
    iget-object v10, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 502
    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    move v12, v4

    move v13, v12

    :goto_1
    if-ge v12, v11, :cond_8

    .line 503
    invoke-interface {v9, v12}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 504
    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 505
    if-nez v13, :cond_4

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 506
    nop

    .line 508
    move v13, v1

    :cond_4
    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 509
    invoke-virtual {v14, v4}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 511
    :cond_5
    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 512
    invoke-virtual {v0, v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 514
    :cond_6
    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-direct {v1, v14}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    goto :goto_1

    .line 517
    :cond_8
    if-eqz v13, :cond_9

    .line 518
    iget-object v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v10, v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 521
    :cond_9
    goto :goto_4

    .line 522
    :cond_a
    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    .line 523
    if-eq v1, v5, :cond_d

    .line 524
    iget-object v5, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 525
    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 526
    const/4 v5, 0x1

    goto :goto_2

    .line 525
    :cond_b
    nop

    .line 526
    move v5, v4

    :goto_2
    if-eqz v2, :cond_c

    .line 527
    add-int/lit8 v7, v7, 0x1

    .line 528
    iget-object v6, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v9, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    iget-object v10, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v10, v10, Landroid/support/design/internal/NavigationMenuPresenter;->paddingSeparator:I

    iget-object v11, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v11, v11, Landroid/support/design/internal/NavigationMenuPresenter;->paddingSeparator:I

    invoke-direct {v9, v10, v11}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_c
    move v6, v5

    goto :goto_3

    .line 530
    :cond_d
    if-nez v6, :cond_e

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 531
    nop

    .line 532
    iget-object v5, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v7, v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 534
    const/4 v6, 0x1

    :cond_e
    :goto_3
    new-instance v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-direct {v5, v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 535
    iput-boolean v6, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 536
    iget-object v8, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    nop

    .line 485
    move v5, v1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 540
    :cond_f
    iput-boolean v4, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 541
    return-void
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .locals 7

    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 564
    const-string v1, "android:menu:checked"

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 567
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 568
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 569
    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 570
    instance-of v5, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v5, :cond_2

    .line 571
    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v4}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    .line 572
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 573
    :goto_1
    if-eqz v5, :cond_2

    .line 574
    new-instance v6, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v6}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    .line 575
    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 576
    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 568
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :cond_3
    const-string v2, "android:menu:action_views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 581
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 379
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 374
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 385
    instance-of v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v0, :cond_0

    .line 386
    const/4 p1, 0x2

    return p1

    .line 387
    :cond_0
    instance-of v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v0, :cond_1

    .line 388
    const/4 p1, 0x3

    return p1

    .line 389
    :cond_1
    instance-of v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v0, :cond_3

    .line 390
    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 391
    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 392
    const/4 p1, 0x1

    return p1

    .line 394
    :cond_2
    const/4 p1, 0x0

    return p1

    .line 397
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V
    .locals 2

    .line 417
    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 447
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 448
    iget-object p1, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p1, v1, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 449
    goto/16 :goto_1

    .line 440
    :pswitch_1
    iget-object p1, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 441
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 442
    invoke-virtual {p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    goto :goto_1

    .line 420
    :pswitch_2
    iget-object p1, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/support/design/internal/NavigationMenuItemView;

    .line 421
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 422
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-boolean v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->textAppearanceSet:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->textAppearance:I

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 425
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 428
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 430
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 428
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 432
    iget-boolean v0, p2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 433
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    .line 434
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->itemIconPadding:I

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 435
    invoke-virtual {p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/support/design/internal/NavigationMenuItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 436
    nop

    .line 456
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 354
    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    .locals 2

    .line 402
    packed-switch p2, :pswitch_data_0

    .line 412
    const/4 p1, 0x0

    return-object p1

    .line 410
    :pswitch_0
    new-instance p1, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object p2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object p2, p2, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 408
    :pswitch_1
    new-instance p2, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 406
    :pswitch_2
    new-instance p2, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 404
    :pswitch_3
    new-instance p2, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v0, p1, v1}, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 354
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V
    .locals 1

    .line 460
    instance-of v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v0, :cond_0

    .line 461
    iget-object p1, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuItemView;->recycle()V

    .line 463
    :cond_0
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 354
    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 585
    const-string v0, "android:menu:checked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 586
    if-eqz v0, :cond_2

    .line 587
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 588
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 589
    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 590
    instance-of v5, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v5, :cond_0

    .line 591
    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v4}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    .line 592
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 593
    invoke-virtual {p0, v4}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 594
    goto :goto_1

    .line 588
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    :cond_1
    :goto_1
    iput-boolean v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 599
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 602
    :cond_2
    const-string v0, "android:menu:action_views"

    .line 603
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    .line 604
    if-eqz p1, :cond_7

    .line 605
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_7

    .line 606
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 607
    instance-of v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-nez v3, :cond_3

    .line 608
    goto :goto_3

    .line 610
    :cond_3
    check-cast v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    .line 611
    if-nez v2, :cond_4

    .line 612
    goto :goto_3

    .line 614
    :cond_4
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v3

    .line 615
    if-nez v3, :cond_5

    .line 616
    goto :goto_3

    .line 618
    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/internal/ParcelableSparseArray;

    .line 619
    if-nez v2, :cond_6

    .line 620
    goto :goto_3

    .line 622
    :cond_6
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 605
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 625
    :cond_7
    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 2

    .line 551
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 557
    :cond_1
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 558
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 559
    return-void

    .line 552
    :cond_2
    :goto_0
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    .line 628
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 629
    return-void
.end method

.method public update()V
    .locals 0

    .line 466
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 467
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    .line 468
    return-void
.end method
