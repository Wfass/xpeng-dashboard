.class abstract Lh$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field A:Z

.field B:I

.field C:I

.field D:I

.field E:Z

.field F:Landroid/graphics/ColorFilter;

.field G:Z

.field H:Landroid/content/res/ColorStateList;

.field I:Landroid/graphics/PorterDuff$Mode;

.field J:Z

.field K:Z

.field final c:Lh;

.field d:Landroid/content/res/Resources;

.field e:I

.field f:I

.field g:I

.field h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field i:[Landroid/graphics/drawable/Drawable;

.field j:I

.field k:Z

.field l:Z

.field m:Landroid/graphics/Rect;

.field n:Z

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:I

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method constructor <init>(Lh$c;Lh;Landroid/content/res/Resources;)V
    .locals 3

    .line 682
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 653
    iput-boolean v0, p0, Lh$c;->k:Z

    .line 656
    iput-boolean v0, p0, Lh$c;->n:Z

    const/4 v1, 0x1

    .line 668
    iput-boolean v1, p0, Lh$c;->z:Z

    .line 671
    iput v0, p0, Lh$c;->C:I

    .line 672
    iput v0, p0, Lh$c;->D:I

    .line 683
    iput-object p2, p0, Lh$c;->c:Lh;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 684
    iget-object v2, p1, Lh$c;->d:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    iput-object v2, p0, Lh$c;->d:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    .line 685
    iget v2, p1, Lh$c;->e:I

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-static {p3, v2}, Lh;->a(Landroid/content/res/Resources;I)I

    move-result p3

    iput p3, p0, Lh$c;->e:I

    if-eqz p1, :cond_b

    .line 687
    iget p3, p1, Lh$c;->f:I

    iput p3, p0, Lh$c;->f:I

    .line 688
    iget p3, p1, Lh$c;->g:I

    iput p3, p0, Lh$c;->g:I

    .line 689
    iput-boolean v1, p0, Lh$c;->x:Z

    .line 690
    iput-boolean v1, p0, Lh$c;->y:Z

    .line 691
    iget-boolean p3, p1, Lh$c;->k:Z

    iput-boolean p3, p0, Lh$c;->k:Z

    .line 692
    iget-boolean p3, p1, Lh$c;->n:Z

    iput-boolean p3, p0, Lh$c;->n:Z

    .line 693
    iget-boolean p3, p1, Lh$c;->z:Z

    iput-boolean p3, p0, Lh$c;->z:Z

    .line 694
    iget-boolean p3, p1, Lh$c;->A:Z

    iput-boolean p3, p0, Lh$c;->A:Z

    .line 695
    iget p3, p1, Lh$c;->B:I

    iput p3, p0, Lh$c;->B:I

    .line 696
    iget p3, p1, Lh$c;->C:I

    iput p3, p0, Lh$c;->C:I

    .line 697
    iget p3, p1, Lh$c;->D:I

    iput p3, p0, Lh$c;->D:I

    .line 698
    iget-boolean p3, p1, Lh$c;->E:Z

    iput-boolean p3, p0, Lh$c;->E:Z

    .line 699
    iget-object p3, p1, Lh$c;->F:Landroid/graphics/ColorFilter;

    iput-object p3, p0, Lh$c;->F:Landroid/graphics/ColorFilter;

    .line 700
    iget-boolean p3, p1, Lh$c;->G:Z

    iput-boolean p3, p0, Lh$c;->G:Z

    .line 701
    iget-object p3, p1, Lh$c;->H:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lh$c;->H:Landroid/content/res/ColorStateList;

    .line 702
    iget-object p3, p1, Lh$c;->I:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, Lh$c;->I:Landroid/graphics/PorterDuff$Mode;

    .line 703
    iget-boolean p3, p1, Lh$c;->J:Z

    iput-boolean p3, p0, Lh$c;->J:Z

    .line 704
    iget-boolean p3, p1, Lh$c;->K:Z

    iput-boolean p3, p0, Lh$c;->K:Z

    .line 705
    iget p3, p1, Lh$c;->e:I

    iget v2, p0, Lh$c;->e:I

    if-ne p3, v2, :cond_5

    .line 706
    iget-boolean p3, p1, Lh$c;->l:Z

    if-eqz p3, :cond_4

    .line 708
    iget-object p3, p1, Lh$c;->m:Landroid/graphics/Rect;

    if-eqz p3, :cond_3

    .line 709
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_3
    iput-object p2, p0, Lh$c;->m:Landroid/graphics/Rect;

    .line 710
    iput-boolean v1, p0, Lh$c;->l:Z

    .line 712
    :cond_4
    iget-boolean p2, p1, Lh$c;->o:Z

    if-eqz p2, :cond_5

    .line 713
    iget p2, p1, Lh$c;->p:I

    iput p2, p0, Lh$c;->p:I

    .line 714
    iget p2, p1, Lh$c;->q:I

    iput p2, p0, Lh$c;->q:I

    .line 715
    iget p2, p1, Lh$c;->r:I

    iput p2, p0, Lh$c;->r:I

    .line 716
    iget p2, p1, Lh$c;->s:I

    iput p2, p0, Lh$c;->s:I

    .line 717
    iput-boolean v1, p0, Lh$c;->o:Z

    .line 720
    :cond_5
    iget-boolean p2, p1, Lh$c;->t:Z

    if-eqz p2, :cond_6

    .line 721
    iget p2, p1, Lh$c;->u:I

    iput p2, p0, Lh$c;->u:I

    .line 722
    iput-boolean v1, p0, Lh$c;->t:Z

    .line 724
    :cond_6
    iget-boolean p2, p1, Lh$c;->v:Z

    if-eqz p2, :cond_7

    .line 725
    iget-boolean p2, p1, Lh$c;->w:Z

    iput-boolean p2, p0, Lh$c;->w:Z

    .line 726
    iput-boolean v1, p0, Lh$c;->v:Z

    .line 730
    :cond_7
    iget-object p2, p1, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    .line 731
    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    .line 732
    iget p3, p1, Lh$c;->j:I

    iput p3, p0, Lh$c;->j:I

    .line 733
    iget-object p1, p1, Lh$c;->h:Landroid/util/SparseArray;

    if-eqz p1, :cond_8

    .line 735
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lh$c;->h:Landroid/util/SparseArray;

    goto :goto_2

    .line 737
    :cond_8
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, Lh$c;->j:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lh$c;->h:Landroid/util/SparseArray;

    .line 742
    :goto_2
    iget p1, p0, Lh$c;->j:I

    :goto_3
    if-ge v0, p1, :cond_c

    .line 744
    aget-object p3, p2, v0

    if-eqz p3, :cond_a

    .line 745
    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 747
    iget-object v1, p0, Lh$c;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 749
    :cond_9
    iget-object p3, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v1, p2, v0

    aput-object v1, p3, v0

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    const/16 p1, 0xa

    .line 754
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    .line 755
    iput v0, p0, Lh$c;->j:I

    :cond_c
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 815
    iget v0, p0, Lh$c;->B:I

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 817
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 818
    iget-object v0, p0, Lh$c;->c:Lh;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p1
.end method

.method private o()V
    .locals 6

    .line 802
    iget-object v0, p0, Lh$c;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 805
    iget-object v2, p0, Lh$c;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 806
    iget-object v3, p0, Lh$c;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 807
    iget-object v4, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lh$c;->d:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lh$c;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 809
    iput-object v0, p0, Lh$c;->h:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .line 771
    iget v0, p0, Lh$c;->j:I

    .line 772
    iget-object v1, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    .line 773
    invoke-virtual {p0, v0, v1}, Lh$c;->e(II)V

    .line 775
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 776
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 777
    iget-object v3, p0, Lh$c;->c:Lh;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 778
    iget-object v3, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    .line 779
    iget v3, p0, Lh$c;->j:I

    add-int/2addr v3, v1

    iput v3, p0, Lh$c;->j:I

    .line 780
    iget v1, p0, Lh$c;->g:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, p0, Lh$c;->g:I

    .line 781
    invoke-virtual {p0}, Lh$c;->b()V

    const/4 p1, 0x0

    .line 782
    iput-object p1, p0, Lh$c;->m:Landroid/graphics/Rect;

    .line 783
    iput-boolean v2, p0, Lh$c;->l:Z

    .line 784
    iput-boolean v2, p0, Lh$c;->o:Z

    .line 785
    iput-boolean v2, p0, Lh$c;->x:Z

    return v0
.end method

.method a()V
    .locals 4

    .line 935
    iget v0, p0, Lh$c;->j:I

    .line 936
    iget-object v1, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 938
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 939
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Lh$c;->A:Z

    return-void
.end method

.method final a(Landroid/content/res/Resources$Theme;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 897
    invoke-direct {p0}, Lh$c;->o()V

    .line 898
    iget v0, p0, Lh$c;->j:I

    .line 899
    iget-object v1, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 901
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-static {v3}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 902
    aget-object v3, v1, v2

    invoke-static {v3, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 904
    iget v3, p0, Lh$c;->g:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lh$c;->g:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 907
    :cond_1
    invoke-static {p1}, Lh$a;->a(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh$c;->a(Landroid/content/res/Resources;)V

    :cond_2
    return-void
.end method

.method final a(Landroid/content/res/Resources;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 881
    iput-object p1, p0, Lh$c;->d:Landroid/content/res/Resources;

    .line 884
    iget v0, p0, Lh$c;->e:I

    invoke-static {p1, v0}, Lh;->a(Landroid/content/res/Resources;I)I

    move-result p1

    .line 885
    iget v0, p0, Lh$c;->e:I

    .line 886
    iput p1, p0, Lh$c;->e:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    .line 888
    iput-boolean p1, p0, Lh$c;->o:Z

    .line 889
    iput-boolean p1, p0, Lh$c;->l:Z

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 962
    iput-boolean p1, p0, Lh$c;->k:Z

    return-void
.end method

.method public final b(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 830
    iget-object v0, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 835
    :cond_0
    iget-object v0, p0, Lh$c;->h:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 836
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 838
    iget-object v2, p0, Lh$c;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 839
    iget-object v3, p0, Lh$c;->d:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lh$c;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 840
    iget-object v3, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    .line 841
    iget-object p1, p0, Lh$c;->h:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 842
    iget-object p1, p0, Lh$c;->h:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 843
    iput-object v1, p0, Lh$c;->h:Landroid/util/SparseArray;

    :cond_1
    return-object v2

    :cond_2
    return-object v1
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 793
    iput-boolean v0, p0, Lh$c;->t:Z

    .line 794
    iput-boolean v0, p0, Lh$c;->v:Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 994
    iput-boolean p1, p0, Lh$c;->n:Z

    return-void
.end method

.method final c()I
    .locals 1

    .line 798
    iget-object v0, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 1065
    iput p1, p0, Lh$c;->C:I

    return-void
.end method

.method public canApplyTheme()Z
    .locals 6

    .line 914
    iget v0, p0, Lh$c;->j:I

    .line 915
    iget-object v1, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 917
    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 919
    invoke-static {v4}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    .line 923
    :cond_0
    iget-object v4, p0, Lh$c;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    .line 924
    invoke-static {v4}, Lh$a;->a(Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final d()I
    .locals 1

    .line 823
    iget v0, p0, Lh$c;->j:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    .line 1073
    iput p1, p0, Lh$c;->D:I

    return-void
.end method

.method final d(II)Z
    .locals 7

    .line 855
    iget v0, p0, Lh$c;->j:I

    .line 856
    iget-object v1, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 858
    aget-object v5, v1, v3

    if-eqz v5, :cond_1

    .line 860
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 861
    aget-object v5, v1, v3

    .line 862
    invoke-static {v5, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-ne v3, p2, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 869
    :cond_2
    iput p1, p0, Lh$c;->B:I

    return v4
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 8

    .line 969
    iget-boolean v0, p0, Lh$c;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 972
    :cond_0
    iget-object v0, p0, Lh$c;->m:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lh$c;->l:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 975
    :cond_1
    invoke-direct {p0}, Lh$c;->o()V

    .line 977
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 978
    iget v2, p0, Lh$c;->j:I

    .line 979
    iget-object v3, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_7

    .line 981
    aget-object v6, v3, v1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v5, :cond_2

    .line 982
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 983
    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 984
    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 985
    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 986
    :cond_5
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    .line 989
    iput-boolean v0, p0, Lh$c;->l:Z

    .line 990
    iput-object v5, p0, Lh$c;->m:Landroid/graphics/Rect;

    return-object v5

    .line 973
    :cond_8
    :goto_1
    iget-object v0, p0, Lh$c;->m:Landroid/graphics/Rect;

    return-object v0
.end method

.method public e(II)V
    .locals 2

    .line 1126
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 1127
    iget-object v0, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1128
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    :cond_0
    iput-object p2, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1001
    iget-boolean v0, p0, Lh$c;->n:Z

    return v0
.end method

.method public final g()I
    .locals 1

    .line 1008
    iget-boolean v0, p0, Lh$c;->o:Z

    if-nez v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Lh$c;->k()V

    .line 1011
    :cond_0
    iget v0, p0, Lh$c;->p:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 761
    iget v0, p0, Lh$c;->f:I

    iget v1, p0, Lh$c;->g:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 1

    .line 1018
    iget-boolean v0, p0, Lh$c;->o:Z

    if-nez v0, :cond_0

    .line 1019
    invoke-virtual {p0}, Lh$c;->k()V

    .line 1021
    :cond_0
    iget v0, p0, Lh$c;->q:I

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1028
    iget-boolean v0, p0, Lh$c;->o:Z

    if-nez v0, :cond_0

    .line 1029
    invoke-virtual {p0}, Lh$c;->k()V

    .line 1031
    :cond_0
    iget v0, p0, Lh$c;->r:I

    return v0
.end method

.method public final j()I
    .locals 1

    .line 1038
    iget-boolean v0, p0, Lh$c;->o:Z

    if-nez v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lh$c;->k()V

    .line 1041
    :cond_0
    iget v0, p0, Lh$c;->s:I

    return v0
.end method

.method protected k()V
    .locals 6

    const/4 v0, 0x1

    .line 1045
    iput-boolean v0, p0, Lh$c;->o:Z

    .line 1046
    invoke-direct {p0}, Lh$c;->o()V

    .line 1047
    iget v0, p0, Lh$c;->j:I

    .line 1048
    iget-object v1, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    .line 1049
    iput v2, p0, Lh$c;->q:I

    iput v2, p0, Lh$c;->p:I

    const/4 v2, 0x0

    .line 1050
    iput v2, p0, Lh$c;->s:I

    iput v2, p0, Lh$c;->r:I

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1052
    aget-object v3, v1, v2

    .line 1053
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1054
    iget v5, p0, Lh$c;->p:I

    if-le v4, v5, :cond_0

    iput v4, p0, Lh$c;->p:I

    .line 1055
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1056
    iget v5, p0, Lh$c;->q:I

    if-le v4, v5, :cond_1

    iput v4, p0, Lh$c;->q:I

    .line 1057
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 1058
    iget v5, p0, Lh$c;->r:I

    if-le v4, v5, :cond_2

    iput v4, p0, Lh$c;->r:I

    .line 1059
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 1060
    iget v4, p0, Lh$c;->s:I

    if-le v3, v4, :cond_3

    iput v3, p0, Lh$c;->s:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final l()I
    .locals 6

    .line 1085
    iget-boolean v0, p0, Lh$c;->t:Z

    if-eqz v0, :cond_0

    .line 1086
    iget v0, p0, Lh$c;->u:I

    return v0

    .line 1088
    :cond_0
    invoke-direct {p0}, Lh$c;->o()V

    .line 1089
    iget v0, p0, Lh$c;->j:I

    .line 1090
    iget-object v1, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_1

    const/4 v2, 0x0

    .line 1091
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    :goto_0
    const/4 v3, 0x1

    move v4, v2

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1093
    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1095
    :cond_2
    iput v4, p0, Lh$c;->u:I

    .line 1096
    iput-boolean v3, p0, Lh$c;->t:Z

    return v4
.end method

.method public final m()Z
    .locals 6

    .line 1104
    iget-boolean v0, p0, Lh$c;->v:Z

    if-eqz v0, :cond_0

    .line 1105
    iget-boolean v0, p0, Lh$c;->w:Z

    return v0

    .line 1107
    :cond_0
    invoke-direct {p0}, Lh$c;->o()V

    .line 1108
    iget v0, p0, Lh$c;->j:I

    .line 1109
    iget-object v1, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    .line 1112
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1117
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lh$c;->w:Z

    .line 1118
    iput-boolean v4, p0, Lh$c;->v:Z

    return v2
.end method

.method public n()Z
    .locals 6

    .line 1137
    iget-boolean v0, p0, Lh$c;->x:Z

    if-eqz v0, :cond_0

    .line 1138
    iget-boolean v0, p0, Lh$c;->y:Z

    return v0

    .line 1140
    :cond_0
    invoke-direct {p0}, Lh$c;->o()V

    const/4 v0, 0x1

    .line 1141
    iput-boolean v0, p0, Lh$c;->x:Z

    .line 1142
    iget v1, p0, Lh$c;->j:I

    .line 1143
    iget-object v2, p0, Lh$c;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    .line 1145
    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1146
    iput-boolean v3, p0, Lh$c;->y:Z

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1150
    :cond_2
    iput-boolean v0, p0, Lh$c;->y:Z

    return v0
.end method
