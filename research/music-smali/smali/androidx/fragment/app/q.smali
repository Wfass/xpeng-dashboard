.class Landroidx/fragment/app/q;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/q$b;,
        Landroidx/fragment/app/q$a;
    }
.end annotation


# static fields
.field static final a:Landroidx/fragment/app/s;

.field static final b:Landroidx/fragment/app/s;

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    .line 48
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/q;->c:[I

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 78
    new-instance v0, Landroidx/fragment/app/r;

    invoke-direct {v0}, Landroidx/fragment/app/r;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    sput-object v0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/s;

    .line 81
    invoke-static {}, Landroidx/fragment/app/q;->b()Landroidx/fragment/app/s;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/q;->b:Landroidx/fragment/app/s;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method static a(Landroidx/collection/a;Landroidx/fragment/app/q$b;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/q$b;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 962
    iget-object p1, p1, Landroidx/fragment/app/q$b;->c:Landroidx/fragment/app/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 963
    iget-object p2, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 965
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 967
    iget-object p1, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 968
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 969
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_4

    .line 189
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 190
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 193
    :cond_0
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 194
    iget-object v3, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 195
    iget-object v3, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 200
    iget-object v1, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    goto :goto_1

    .line 202
    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 203
    iget-object v1, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 206
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 207
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v6}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 210
    invoke-virtual {v0, v5, v7}, Landroidx/collection/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 212
    :cond_2
    invoke-virtual {v0, v5, v6}, Landroidx/collection/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static a(Landroidx/fragment/app/s;Landroidx/collection/a;Ljava/lang/Object;Landroidx/fragment/app/q$b;)Landroidx/collection/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/s;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/q$b;",
            ")",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 889
    iget-object v0, p3, Landroidx/fragment/app/q$b;->a:Landroidx/fragment/app/Fragment;

    .line 890
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 891
    invoke-virtual {p1}, Landroidx/collection/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    if-nez v1, :cond_0

    goto :goto_3

    .line 895
    :cond_0
    new-instance p2, Landroidx/collection/a;

    invoke-direct {p2}, Landroidx/collection/a;-><init>()V

    .line 896
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/s;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 900
    iget-object p0, p3, Landroidx/fragment/app/q$b;->c:Landroidx/fragment/app/a;

    .line 901
    iget-boolean p3, p3, Landroidx/fragment/app/q$b;->b:Z

    if-eqz p3, :cond_1

    .line 902
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/m;

    move-result-object p3

    .line 903
    iget-object p0, p0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    goto :goto_0

    .line 905
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/m;

    move-result-object p3

    .line 906
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 910
    invoke-virtual {p2, p0}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    .line 911
    invoke-virtual {p1}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_5

    .line 914
    invoke-virtual {p3, p0, p2}, Landroidx/core/app/m;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 915
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_6

    .line 916
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 917
    invoke-virtual {p2, v0}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 919
    invoke-static {p1, v0}, Landroidx/fragment/app/q;->a(Landroidx/collection/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 921
    invoke-virtual {p1, v0}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 923
    :cond_3
    invoke-static {v1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 924
    invoke-static {p1, v0}, Landroidx/fragment/app/q;->a(Landroidx/collection/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 926
    invoke-static {v1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/collection/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 931
    :cond_5
    invoke-static {p1, p2}, Landroidx/fragment/app/q;->a(Landroidx/collection/a;Landroidx/collection/a;)V

    :cond_6
    return-object p2

    .line 892
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroidx/collection/a;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/q$b;Landroid/util/SparseArray;I)Landroidx/fragment/app/q$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/q$b;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/q$b;",
            ">;I)",
            "Landroidx/fragment/app/q$b;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1272
    new-instance p0, Landroidx/fragment/app/q$b;

    invoke-direct {p0}, Landroidx/fragment/app/q$b;-><init>()V

    .line 1273
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;
    .locals 2

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 484
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 488
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 490
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 494
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 498
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    .line 505
    :cond_6
    sget-object p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/s;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 506
    sget-object p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/s;

    return-object p0

    .line 508
    :cond_7
    sget-object p0, Landroidx/fragment/app/q;->b:Landroidx/fragment/app/s;

    if-eqz p0, :cond_8

    invoke-static {p0, v0}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 509
    sget-object p0, Landroidx/fragment/app/q;->b:Landroidx/fragment/app/s;

    return-object p0

    .line 511
    :cond_8
    sget-object p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/s;

    if-nez p0, :cond_9

    sget-object p0, Landroidx/fragment/app/q;->b:Landroidx/fragment/app/s;

    if-nez p0, :cond_9

    return-object p1

    .line 512
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/fragment/app/s;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/s;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/q$b;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    .line 609
    iget-object v9, v7, Landroidx/fragment/app/q$b;->a:Landroidx/fragment/app/Fragment;

    .line 610
    iget-object v10, v7, Landroidx/fragment/app/q$b;->d:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_0

    .line 612
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v9, :cond_9

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 618
    :cond_1
    iget-boolean v11, v7, Landroidx/fragment/app/q$b;->b:Z

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/a;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_0

    .line 620
    :cond_2
    invoke-static {p0, v9, v10, v11}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 622
    :goto_0
    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/q;->b(Landroidx/fragment/app/s;Landroidx/collection/a;Ljava/lang/Object;Landroidx/fragment/app/q$b;)Landroidx/collection/a;

    move-result-object v12

    .line 625
    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Landroidx/collection/a;Ljava/lang/Object;Landroidx/fragment/app/q$b;)Landroidx/collection/a;

    move-result-object v13

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/a;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v12, :cond_3

    .line 631
    invoke-virtual {v12}, Landroidx/collection/a;->clear()V

    :cond_3
    if-eqz v13, :cond_4

    .line 634
    invoke-virtual {v13}, Landroidx/collection/a;->clear()V

    :cond_4
    move-object v14, v4

    goto :goto_1

    .line 638
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 637
    invoke-static {v2, v12, v14}, Landroidx/fragment/app/q;->a(Ljava/util/ArrayList;Landroidx/collection/a;Ljava/util/Collection;)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v1

    .line 639
    invoke-static {v3, v13, v1}, Landroidx/fragment/app/q;->a(Ljava/util/ArrayList;Landroidx/collection/a;Ljava/util/Collection;)V

    move-object v14, v5

    :goto_1
    if-nez v8, :cond_6

    if-nez p8, :cond_6

    if-nez v14, :cond_6

    return-object v4

    :cond_6
    const/4 v1, 0x1

    .line 648
    invoke-static {v9, v10, v11, v12, v1}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/a;Z)V

    if-eqz v14, :cond_8

    .line 653
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual {p0, v14, v0, v2}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 656
    iget-boolean v4, v7, Landroidx/fragment/app/q$b;->e:Z

    .line 657
    iget-object v5, v7, Landroidx/fragment/app/q$b;->f:Landroidx/fragment/app/a;

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p8

    move-object v3, v12

    .line 658
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/a;ZLandroidx/fragment/app/a;)V

    .line 660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 661
    invoke-static {v13, v7, v8, v11}, Landroidx/fragment/app/q;->a(Landroidx/collection/a;Landroidx/fragment/app/q$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 664
    invoke-virtual {p0, v8, v0}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_7
    move-object v7, v0

    move-object v5, v1

    goto :goto_2

    :cond_8
    move-object v5, v4

    move-object v7, v5

    .line 671
    :goto_2
    new-instance v8, Landroidx/fragment/app/q$5;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v13

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/q$5;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/a;Landroid/view/View;Landroidx/fragment/app/s;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)Lge;

    return-object v14

    :cond_9
    :goto_3
    return-object v4
.end method

.method private static a(Landroidx/fragment/app/s;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 544
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 543
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 546
    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/s;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 558
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 557
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/s;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 1092
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 1103
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 1108
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/s;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static a(Landroidx/collection/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 940
    invoke-virtual {p0}, Landroidx/collection/a;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 942
    invoke-virtual {p0, v1}, Landroidx/collection/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    invoke-virtual {p0, v1}, Landroidx/collection/a;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroidx/fragment/app/s;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/s;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1057
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/s;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1060
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1062
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1063
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method static a(Landroid/content/Context;Landroidx/fragment/app/d;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/q$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/d;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Landroidx/fragment/app/q$a;",
            ")V"
        }
    .end annotation

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p4

    :goto_0
    if-ge v1, p5, :cond_1

    .line 130
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 131
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/q;->b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 135
    :cond_0
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p0, :cond_5

    .line 143
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 144
    invoke-static {v3, p2, p3, p4, p5}, Landroidx/fragment/app/q;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/a;

    move-result-object v4

    .line 148
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/q$b;

    .line 150
    invoke-virtual {p1}, Landroidx/fragment/app/d;->onHasView()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 151
    invoke-virtual {p1, v3}, Landroidx/fragment/app/d;->onFindViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p6, :cond_3

    .line 158
    invoke-static {v3, v5, v1, v4, p7}, Landroidx/fragment/app/q;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/q$b;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$a;)V

    goto :goto_3

    .line 161
    :cond_3
    invoke-static {v3, v5, v1, v4, p7}, Landroidx/fragment/app/q;->b(Landroid/view/ViewGroup;Landroidx/fragment/app/q$b;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$a;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Landroidx/fragment/app/q$b;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$a;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/q$b;",
            "Landroid/view/View;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/q$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    .line 237
    iget-object v11, v4, Landroidx/fragment/app/q$b;->a:Landroidx/fragment/app/Fragment;

    .line 238
    iget-object v12, v4, Landroidx/fragment/app/q$b;->d:Landroidx/fragment/app/Fragment;

    .line 239
    invoke-static {v12, v11}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v13

    if-nez v13, :cond_0

    return-void

    .line 243
    :cond_0
    iget-boolean v14, v4, Landroidx/fragment/app/q$b;->b:Z

    .line 244
    iget-boolean v0, v4, Landroidx/fragment/app/q$b;->e:Z

    .line 246
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-static {v13, v11, v14}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 249
    invoke-static {v13, v12, v0}, Landroidx/fragment/app/q;->b(Landroidx/fragment/app/s;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object v5, v8

    move-object/from16 p1, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v10, v8

    move-object/from16 v8, p1

    .line 251
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v6, v16

    if-nez v6, :cond_1

    if-nez v8, :cond_1

    move-object/from16 v7, p1

    if-nez v7, :cond_2

    return-void

    :cond_1
    move-object/from16 v7, p1

    .line 260
    :cond_2
    invoke-static {v13, v7, v12, v10, v9}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 263
    invoke-static {v13, v6, v11, v15, v9}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x4

    .line 266
    invoke-static {v9, v0}, Landroidx/fragment/app/q;->a(Ljava/util/ArrayList;I)V

    move-object v0, v13

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v11

    move-object v11, v5

    move v5, v14

    .line 268
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    .line 272
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 273
    :cond_3
    new-instance v0, Lek;

    invoke-direct {v0}, Lek;-><init>()V

    move-object/from16 v1, p4

    .line 274
    invoke-interface {v1, v12, v0}, Landroidx/fragment/app/q$a;->a(Landroidx/fragment/app/Fragment;Lek;)V

    .line 275
    new-instance v2, Landroidx/fragment/app/q$1;

    invoke-direct {v2, v1, v12, v0}, Landroidx/fragment/app/q$1;-><init>(Landroidx/fragment/app/q$a;Landroidx/fragment/app/Fragment;Lek;)V

    invoke-virtual {v13, v12, v14, v0, v2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lek;Ljava/lang/Runnable;)V

    :cond_4
    if-eqz v14, :cond_5

    .line 284
    invoke-static {v13, v7, v12, v11}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 286
    invoke-virtual {v13, v15}, Landroidx/fragment/app/s;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v0, v13

    move-object v1, v14

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v11

    move-object v6, v8

    move-object v7, v15

    .line 287
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    .line 290
    invoke-virtual {v13, v1, v14}, Landroidx/fragment/app/s;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v2, v10

    move-object v3, v15

    move-object v4, v12

    move-object/from16 v5, p3

    .line 291
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/s;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 293
    invoke-static {v9, v0}, Landroidx/fragment/app/q;->a(Ljava/util/ArrayList;I)V

    .line 294
    invoke-virtual {v13, v8, v10, v15}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method static a(Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Landroidx/collection/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1008
    invoke-virtual {p0, v0}, Landroidx/collection/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1009
    invoke-virtual {p1, v1}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1010
    invoke-virtual {p0, v0}, Landroidx/collection/a;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1030
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/m;

    move-result-object p0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/m;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 1033
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    move v1, v0

    goto :goto_1

    .line 1035
    :cond_1
    invoke-virtual {p3}, Landroidx/collection/a;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1037
    invoke-virtual {p3, v0}, Landroidx/collection/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {p3, v0}, Landroidx/collection/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    if-eqz p4, :cond_3

    .line 1041
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/m;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 1043
    :cond_3
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/m;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/q$b;",
            ">;Z)V"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1127
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/p$a;

    .line 1128
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/p$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroidx/fragment/app/a;Landroidx/fragment/app/p$a;Landroid/util/SparseArray;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroidx/fragment/app/p$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/q$b;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1173
    iget-object v0, p1, Landroidx/fragment/app/p$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 1177
    :cond_0
    iget v1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 1181
    sget-object v2, Landroidx/fragment/app/q;->c:[I

    iget p1, p1, Landroidx/fragment/app/p$a;->a:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroidx/fragment/app/p$a;->a:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_7

    const/4 v4, 0x7

    if-eq p1, v4, :cond_a

    move p1, v2

    move v3, p1

    move v4, v3

    goto/16 :goto_6

    :cond_3
    if-eqz p4, :cond_4

    .line 1189
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_c

    goto :goto_4

    .line 1191
    :cond_4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto/16 :goto_5

    :cond_5
    if-eqz p4, :cond_6

    .line 1206
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_8

    :goto_1
    goto :goto_2

    .line 1208
    :cond_6
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_9

    .line 1215
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_8

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1216
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget p1, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_8

    :goto_2
    move p1, v3

    goto :goto_3

    :cond_8
    move p1, v2

    goto :goto_3

    .line 1219
    :cond_9
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_2

    :goto_3
    move v4, p1

    move p1, v3

    move v3, v2

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    .line 1198
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_5

    .line 1200
    :cond_b
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    :goto_4
    move p1, v3

    goto :goto_5

    :cond_c
    move p1, v2

    :goto_5
    move v4, v2

    move v2, p1

    move p1, v4

    .line 1224
    :goto_6
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/q$b;

    if-eqz v2, :cond_d

    .line 1227
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/q$b;Landroid/util/SparseArray;I)Landroidx/fragment/app/q$b;

    move-result-object v5

    .line 1228
    iput-object v0, v5, Landroidx/fragment/app/q$b;->a:Landroidx/fragment/app/Fragment;

    .line 1229
    iput-boolean p3, v5, Landroidx/fragment/app/q$b;->b:Z

    .line 1230
    iput-object p0, v5, Landroidx/fragment/app/q$b;->c:Landroidx/fragment/app/a;

    :cond_d
    const/4 v2, 0x0

    if-nez p4, :cond_f

    if-eqz v3, :cond_f

    if-eqz v5, :cond_e

    .line 1233
    iget-object v3, v5, Landroidx/fragment/app/q$b;->d:Landroidx/fragment/app/Fragment;

    if-ne v3, v0, :cond_e

    .line 1234
    iput-object v2, v5, Landroidx/fragment/app/q$b;->d:Landroidx/fragment/app/Fragment;

    .line 1237
    :cond_e
    iget-boolean v3, p0, Landroidx/fragment/app/a;->s:Z

    if-nez v3, :cond_f

    .line 1242
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/FragmentManager;

    .line 1244
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/n;

    move-result-object v6

    .line 1245
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getFragmentStore()Landroidx/fragment/app/o;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/n;)V

    .line 1246
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    :cond_f
    if-eqz v4, :cond_11

    if-eqz v5, :cond_10

    .line 1249
    iget-object v3, v5, Landroidx/fragment/app/q$b;->d:Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_11

    .line 1251
    :cond_10
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/q$b;Landroid/util/SparseArray;I)Landroidx/fragment/app/q$b;

    move-result-object v5

    .line 1252
    iput-object v0, v5, Landroidx/fragment/app/q$b;->d:Landroidx/fragment/app/Fragment;

    .line 1253
    iput-boolean p3, v5, Landroidx/fragment/app/q$b;->e:Z

    .line 1254
    iput-object p0, v5, Landroidx/fragment/app/q$b;->f:Landroidx/fragment/app/a;

    :cond_11
    if-nez p4, :cond_12

    if-eqz p1, :cond_12

    if-eqz v5, :cond_12

    .line 1257
    iget-object p0, v5, Landroidx/fragment/app/q$b;->a:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_12

    .line 1259
    iput-object v2, v5, Landroidx/fragment/app/q$b;->a:Landroidx/fragment/app/Fragment;

    :cond_12
    return-void
.end method

.method private static a(Landroidx/fragment/app/s;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/s;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 441
    new-instance v9, Landroidx/fragment/app/q$4;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/q$4;-><init>(Ljava/lang/Object;Landroidx/fragment/app/s;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)Lge;

    return-void
.end method

.method private static a(Landroidx/fragment/app/s;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/s;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 307
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 311
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 310
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/s;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 327
    iget-object p0, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 328
    new-instance p1, Landroidx/fragment/app/q$2;

    invoke-direct {p1, p3}, Landroidx/fragment/app/q$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)Lge;

    :cond_0
    return-void
.end method

.method private static a(Landroidx/fragment/app/s;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/a;ZLandroidx/fragment/app/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/s;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/a;",
            ")V"
        }
    .end annotation

    .line 986
    iget-object v0, p5, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 987
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 989
    iget-object p4, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    .line 990
    :cond_0
    iget-object p4, p5, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 991
    :goto_0
    invoke-virtual {p3, p4}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 992
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 995
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static a(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1077
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1078
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1079
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroidx/collection/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 695
    invoke-virtual {p1}, Landroidx/collection/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 696
    invoke-virtual {p1, v0}, Landroidx/collection/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 697
    invoke-static {v1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a()Z
    .locals 1

    .line 1153
    sget-object v0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/s;

    if-nez v0, :cond_1

    sget-object v0, Landroidx/fragment/app/q;->b:Landroidx/fragment/app/s;

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

.method private static a(Landroidx/fragment/app/s;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/s;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 518
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 519
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroidx/fragment/app/s;Landroidx/collection/a;Ljava/lang/Object;Landroidx/fragment/app/q$b;)Landroidx/collection/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/s;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/q$b;",
            ")",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-virtual {p1}, Landroidx/collection/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    .line 835
    :cond_0
    iget-object p2, p3, Landroidx/fragment/app/q$b;->d:Landroidx/fragment/app/Fragment;

    .line 836
    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 837
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/s;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 841
    iget-object p0, p3, Landroidx/fragment/app/q$b;->f:Landroidx/fragment/app/a;

    .line 842
    iget-boolean p3, p3, Landroidx/fragment/app/q$b;->e:Z

    if-eqz p3, :cond_1

    .line 843
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/m;

    move-result-object p2

    .line 844
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    goto :goto_0

    .line 846
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/m;

    move-result-object p2

    .line 847
    iget-object p0, p0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 851
    invoke-virtual {v0, p0}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p2, :cond_5

    .line 854
    invoke-virtual {p2, p0, v0}, Landroidx/core/app/m;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 855
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_6

    .line 856
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 857
    invoke-virtual {v0, p3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 859
    invoke-virtual {p1, p3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 860
    :cond_3
    invoke-static {v1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 861
    invoke-virtual {p1, p3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 862
    invoke-static {v1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroidx/collection/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 866
    :cond_5
    invoke-virtual {v0}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v0

    .line 832
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroidx/collection/a;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()Landroidx/fragment/app/s;
    .locals 3

    :try_start_0
    const-string v0, "androidx.transition.f"

    .line 86
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Landroidx/fragment/app/s;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/s;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/q$b;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 738
    iget-object v8, v7, Landroidx/fragment/app/q$b;->a:Landroidx/fragment/app/Fragment;

    .line 739
    iget-object v9, v7, Landroidx/fragment/app/q$b;->d:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz v8, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 745
    :cond_0
    iget-boolean v12, v7, Landroidx/fragment/app/q$b;->b:Z

    .line 746
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/a;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v13, p3

    move-object v1, v0

    goto :goto_0

    .line 747
    :cond_1
    invoke-static {v6, v8, v9, v12}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v13, p3

    .line 749
    :goto_0
    invoke-static {v6, v13, v1, v7}, Landroidx/fragment/app/q;->b(Landroidx/fragment/app/s;Landroidx/collection/a;Ljava/lang/Object;Landroidx/fragment/app/q$b;)Landroidx/collection/a;

    move-result-object v3

    .line 752
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/a;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v14, v0

    goto :goto_1

    .line 755
    :cond_2
    invoke-virtual {v3}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v1

    :goto_1
    if-nez v11, :cond_3

    if-nez p8, :cond_3

    if-nez v14, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x1

    .line 763
    invoke-static {v8, v9, v12, v3, v1}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/a;Z)V

    if-eqz v14, :cond_4

    .line 767
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v5, p2

    .line 768
    invoke-virtual {v6, v14, v5, v10}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 770
    iget-boolean v4, v7, Landroidx/fragment/app/q$b;->e:Z

    .line 771
    iget-object v2, v7, Landroidx/fragment/app/q$b;->f:Landroidx/fragment/app/a;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v16, v2

    move-object/from16 v2, p8

    move-object/from16 v5, v16

    .line 772
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/a;ZLandroidx/fragment/app/a;)V

    if-eqz v11, :cond_5

    .line 775
    invoke-virtual {v6, v11, v15}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    move-object v15, v0

    .line 783
    :cond_5
    :goto_2
    new-instance v5, Landroidx/fragment/app/q$6;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v8, v9

    move v9, v12

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/q$6;-><init>(Landroidx/fragment/app/s;Landroidx/collection/a;Ljava/lang/Object;Landroidx/fragment/app/q$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)Lge;

    return-object v14

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static b(Landroidx/fragment/app/s;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 571
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    .line 570
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/view/ViewGroup;Landroidx/fragment/app/q$b;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$a;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/q$b;",
            "Landroid/view/View;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/q$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 354
    iget-object v14, v10, Landroidx/fragment/app/q$b;->a:Landroidx/fragment/app/Fragment;

    .line 355
    iget-object v15, v10, Landroidx/fragment/app/q$b;->d:Landroidx/fragment/app/Fragment;

    .line 356
    invoke-static {v15, v14}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    .line 360
    :cond_0
    iget-boolean v0, v10, Landroidx/fragment/app/q$b;->b:Z

    .line 361
    iget-boolean v1, v10, Landroidx/fragment/app/q$b;->e:Z

    .line 363
    invoke-static {v8, v14, v0}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 364
    invoke-static {v8, v15, v1}, Landroidx/fragment/app/q;->b(Landroidx/fragment/app/s;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 366
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 367
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v19, v7

    move-object v9, v8

    move-object/from16 v8, v18

    .line 369
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/q;->b(Landroidx/fragment/app/s;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/q$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v8, v19

    if-nez v8, :cond_1

    if-nez v6, :cond_1

    move-object/from16 v0, v18

    if-nez v0, :cond_2

    return-void

    :cond_1
    move-object/from16 v0, v18

    :cond_2
    move-object/from16 v7, v17

    .line 378
    invoke-static {v9, v0, v15, v7, v11}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 381
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
    move-object/from16 v18, v0

    .line 387
    invoke-virtual {v9, v8, v11}, Landroidx/fragment/app/s;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 389
    iget-boolean v5, v10, Landroidx/fragment/app/q$b;->b:Z

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v14

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    if-eqz v15, :cond_6

    if-eqz v17, :cond_6

    .line 393
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 394
    :cond_5
    new-instance v0, Lek;

    invoke-direct {v0}, Lek;-><init>()V

    .line 395
    invoke-interface {v13, v15, v0}, Landroidx/fragment/app/q$a;->a(Landroidx/fragment/app/Fragment;Lek;)V

    .line 396
    new-instance v1, Landroidx/fragment/app/q$3;

    invoke-direct {v1, v13, v15, v0}, Landroidx/fragment/app/q$3;-><init>(Landroidx/fragment/app/q$a;Landroidx/fragment/app/Fragment;Lek;)V

    invoke-virtual {v9, v15, v10, v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lek;Ljava/lang/Runnable;)V

    :cond_6
    if-eqz v10, :cond_7

    .line 405
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    move-object v1, v10

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object/from16 v7, v16

    .line 406
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/s;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v8

    move-object v6, v13

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    .line 409
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/s;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    .line 411
    invoke-virtual {v1, v0, v2, v12}, Landroidx/fragment/app/s;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 413
    invoke-virtual {v1, v0, v10}, Landroidx/fragment/app/s;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v1, v0, v2, v12}, Landroidx/fragment/app/s;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public static b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/q$b;",
            ">;Z)V"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getContainer()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/d;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1145
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1147
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/p$a;

    .line 1148
    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/q;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/p$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
