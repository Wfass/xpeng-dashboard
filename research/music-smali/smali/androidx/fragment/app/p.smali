.class public abstract Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/p$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/f;

.field private final b:Ljava/lang/ClassLoader;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/p$a;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:I

.field n:Ljava/lang/CharSequence;

.field o:I

.field p:Ljava/lang/CharSequence;

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Z

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/f;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/p;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Landroidx/fragment/app/p;->k:Z

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Landroidx/fragment/app/p;->s:Z

    .line 127
    iput-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/f;

    .line 128
    iput-object p2, p0, Landroidx/fragment/app/p;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public a(IIII)Landroidx/fragment/app/p;
    .locals 0

    .line 575
    iput p1, p0, Landroidx/fragment/app/p;->e:I

    .line 576
    iput p2, p0, Landroidx/fragment/app/p;->f:I

    .line 577
    iput p3, p0, Landroidx/fragment/app/p;->g:I

    .line 578
    iput p4, p0, Landroidx/fragment/app/p;->h:I

    return-object p0
.end method

.method public a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 189
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;
    .locals 1

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/p;
    .locals 3

    .line 596
    invoke-static {}, Landroidx/fragment/app/q;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    invoke-static {p1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 602
    iget-object v0, p0, Landroidx/fragment/app/p;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/p;->q:Ljava/util/ArrayList;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/p;->r:Ljava/util/ArrayList;

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\' has already been added to the transaction."

    if-nez v0, :cond_2

    .line 608
    iget-object v0, p0, Landroidx/fragment/app/p;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/p;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object p1, p0, Landroidx/fragment/app/p;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 609
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A shared element with the source name \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 606
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A shared element with the target name \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 599
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object p0
.end method

.method a(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;
    .locals 0

    .line 240
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 241
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 2

    .line 357
    new-instance v0, Landroidx/fragment/app/p$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/p$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;)V

    return-object p0
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/p;
    .locals 2

    .line 472
    new-instance v0, Landroidx/fragment/app/p$a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p2}, Landroidx/fragment/app/p$a;-><init>(ILandroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;)V

    return-object p0
.end method

.method public a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/p;
    .locals 1

    .line 655
    iget-boolean v0, p0, Landroidx/fragment/app/p;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 659
    iput-boolean v0, p0, Landroidx/fragment/app/p;->j:Z

    .line 660
    iput-object p1, p0, Landroidx/fragment/app/p;->l:Ljava/lang/String;

    return-object p0

    .line 656
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 247
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_3

    .line 255
    iget-object v2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_2
    :goto_0
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_7

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    .line 268
    iget p3, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz p3, :cond_5

    iget p3, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne p3, p1, :cond_4

    goto :goto_1

    .line 269
    :cond_4
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 273
    :cond_5
    :goto_1
    iput p1, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_2

    .line 265
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add fragment "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_7
    :goto_2
    new-instance p1, Landroidx/fragment/app/p$a;

    invoke-direct {p1, p4, p2}, Landroidx/fragment/app/p$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;)V

    return-void

    .line 249
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroidx/fragment/app/p$a;)V
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/fragment/app/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget v0, p0, Landroidx/fragment/app/p;->e:I

    iput v0, p1, Landroidx/fragment/app/p$a;->c:I

    .line 134
    iget v0, p0, Landroidx/fragment/app/p;->f:I

    iput v0, p1, Landroidx/fragment/app/p$a;->d:I

    .line 135
    iget v0, p0, Landroidx/fragment/app/p;->g:I

    iput v0, p1, Landroidx/fragment/app/p$a;->e:I

    .line 136
    iget v0, p0, Landroidx/fragment/app/p;->h:I

    iput v0, p1, Landroidx/fragment/app/p$a;->f:I

    return-void
.end method

.method public abstract b()I
.end method

.method public b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/p;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    move-result-object p1

    return-object p1
.end method

.method public b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 343
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    .line 341
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 2

    .line 373
    new-instance v0, Landroidx/fragment/app/p$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/p$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;)V

    return-object p0
.end method

.method public abstract c()I
.end method

.method public c(I)Landroidx/fragment/app/p;
    .locals 0

    .line 626
    iput p1, p0, Landroidx/fragment/app/p;->i:I

    return-object p0
.end method

.method public c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 2

    .line 389
    new-instance v0, Landroidx/fragment/app/p$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/p$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;)V

    return-object p0
.end method

.method public c(Z)Landroidx/fragment/app/p;
    .locals 0

    .line 782
    iput-boolean p1, p0, Landroidx/fragment/app/p;->s:Z

    return-object p0
.end method

.method public d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 2

    .line 407
    new-instance v0, Landroidx/fragment/app/p$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/p$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;)V

    return-object p0
.end method

.method public abstract d()V
.end method

.method public e(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 2

    .line 447
    new-instance v0, Landroidx/fragment/app/p$a;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/p$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;)V

    return-object p0
.end method

.method public abstract e()V
.end method

.method public f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 2

    .line 424
    new-instance v0, Landroidx/fragment/app/p$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/p$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;)V

    return-object p0
.end method

.method public i()Z
    .locals 1

    .line 481
    iget-object v0, p0, Landroidx/fragment/app/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j()Landroidx/fragment/app/p;
    .locals 2

    .line 682
    iget-boolean v0, p0, Landroidx/fragment/app/p;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 686
    iput-boolean v0, p0, Landroidx/fragment/app/p;->k:Z

    return-object p0

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
