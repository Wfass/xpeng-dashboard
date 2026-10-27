.class public abstract Landroidx/transition/o;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/o$b;,
        Landroidx/transition/o$a;,
        Landroidx/transition/o$c;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/collection/a<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/o$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:[I

.field private static final i:Landroidx/transition/i;


# instance fields
.field private B:I

.field private C:Z

.field private D:Z

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/o$c;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroidx/transition/o$b;

.field private H:Landroidx/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroidx/transition/i;

.field a:J

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroidx/transition/s;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroidx/transition/r;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Landroid/animation/TimeInterpolator;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private v:Landroidx/transition/v;

.field private w:Landroidx/transition/v;

.field private x:[I

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/u;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 164
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/transition/o;->h:[I

    .line 171
    new-instance v0, Landroidx/transition/o$1;

    invoke-direct {v0}, Landroidx/transition/o$1;-><init>()V

    sput-object v0, Landroidx/transition/o;->i:Landroidx/transition/i;

    .line 205
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/o;->A:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/o;->j:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Landroidx/transition/o;->k:J

    .line 184
    iput-wide v0, p0, Landroidx/transition/o;->a:J

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Landroidx/transition/o;->l:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/transition/o;->m:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/transition/o;->n:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/transition/o;->o:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/transition/o;->p:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/transition/o;->q:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/transition/o;->r:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/transition/o;->s:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/transition/o;->t:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Landroidx/transition/o;->u:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Landroidx/transition/v;

    invoke-direct {v1}, Landroidx/transition/v;-><init>()V

    iput-object v1, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    .line 198
    new-instance v1, Landroidx/transition/v;

    invoke-direct {v1}, Landroidx/transition/v;-><init>()V

    iput-object v1, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    .line 199
    iput-object v0, p0, Landroidx/transition/o;->d:Landroidx/transition/s;

    .line 200
    sget-object v1, Landroidx/transition/o;->h:[I

    iput-object v1, p0, Landroidx/transition/o;->x:[I

    const/4 v1, 0x0

    .line 214
    iput-boolean v1, p0, Landroidx/transition/o;->e:Z

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/o;->f:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroidx/transition/o;->B:I

    .line 226
    iput-boolean v1, p0, Landroidx/transition/o;->C:Z

    .line 230
    iput-boolean v1, p0, Landroidx/transition/o;->D:Z

    .line 233
    iput-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/o;->F:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroidx/transition/o;->i:Landroidx/transition/i;

    iput-object v0, p0, Landroidx/transition/o;->I:Landroidx/transition/i;

    return-void
.end method

.method private a(Landroid/animation/Animator;Landroidx/collection/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/collection/a<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/o$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 895
    new-instance v0, Landroidx/transition/o$2;

    invoke-direct {v0, p0, p2}, Landroidx/transition/o$2;-><init>(Landroidx/transition/o;Landroidx/collection/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 907
    invoke-virtual {p0, p1}, Landroidx/transition/o;->a(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;)V"
        }
    .end annotation

    .line 543
    invoke-virtual {p1}, Landroidx/collection/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 544
    invoke-virtual {p1, v0}, Landroidx/collection/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {p0, v1}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {p2, v1}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    if-eqz v1, :cond_0

    .line 547
    iget-object v2, v1, Landroidx/transition/u;->b:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    invoke-virtual {p1, v0}, Landroidx/collection/a;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    .line 549
    iget-object v3, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v2, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/collection/a;Landroidx/collection/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 591
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 593
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {p0, v2}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 596
    invoke-virtual {p0, v3}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    invoke-virtual {p1, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/u;

    .line 598
    invoke-virtual {p2, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/u;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 600
    iget-object v6, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v4, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {p1, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {p2, v3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 618
    invoke-virtual {p3}, Landroidx/collection/a;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 620
    invoke-virtual {p3, v1}, Landroidx/collection/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 621
    invoke-virtual {p0, v2}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    invoke-virtual {p3, v1}, Landroidx/collection/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 623
    invoke-virtual {p0, v3}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    invoke-virtual {p1, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/u;

    .line 625
    invoke-virtual {p2, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/u;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 627
    iget-object v6, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v4, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-virtual {p1, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-virtual {p2, v3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/c;Landroidx/collection/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;",
            "Landroidx/collection/c<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/c<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 564
    invoke-virtual {p3}, Landroidx/collection/c;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 566
    invoke-virtual {p3, v1}, Landroidx/collection/c;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 567
    invoke-virtual {p0, v2}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    invoke-virtual {p3, v1}, Landroidx/collection/c;->b(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 569
    invoke-virtual {p0, v3}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 570
    invoke-virtual {p1, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/u;

    .line 571
    invoke-virtual {p2, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/u;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 573
    iget-object v6, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v4, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {p1, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {p2, v3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroidx/transition/v;Landroid/view/View;Landroidx/transition/u;)V
    .locals 3

    .line 1529
    iget-object v0, p0, Landroidx/transition/v;->a:Landroidx/collection/a;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1532
    iget-object v1, p0, Landroidx/transition/v;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1534
    iget-object v1, p0, Landroidx/transition/v;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1536
    :cond_0
    iget-object v1, p0, Landroidx/transition/v;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1539
    :cond_1
    :goto_0
    invoke-static {p1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1541
    iget-object v1, p0, Landroidx/transition/v;->d:Landroidx/collection/a;

    invoke-virtual {v1, p2}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1543
    iget-object v1, p0, Landroidx/transition/v;->d:Landroidx/collection/a;

    invoke-virtual {v1, p2, v0}, Landroidx/collection/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1545
    :cond_2
    iget-object v1, p0, Landroidx/transition/v;->d:Landroidx/collection/a;

    invoke-virtual {v1, p2, p1}, Landroidx/collection/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 1550
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1551
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1552
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1553
    iget-object p2, p0, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {p2, v1, v2}, Landroidx/collection/c;->c(J)I

    move-result p2

    if-ltz p2, :cond_4

    .line 1555
    iget-object p1, p0, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {p1, v1, v2}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 1557
    invoke-static {p1, p2}, Lgj;->a(Landroid/view/View;Z)V

    .line 1558
    iget-object p0, p0, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/collection/c;->b(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    .line 1561
    invoke-static {p1, p2}, Lgj;->a(Landroid/view/View;Z)V

    .line 1562
    iget-object p0, p0, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {p0, v1, v2, p1}, Landroidx/collection/c;->b(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Landroidx/transition/v;Landroidx/transition/v;)V
    .locals 5

    .line 664
    new-instance v0, Landroidx/collection/a;

    iget-object v1, p1, Landroidx/transition/v;->a:Landroidx/collection/a;

    invoke-direct {v0, v1}, Landroidx/collection/a;-><init>(Landroidx/collection/e;)V

    .line 665
    new-instance v1, Landroidx/collection/a;

    iget-object v2, p2, Landroidx/transition/v;->a:Landroidx/collection/a;

    invoke-direct {v1, v2}, Landroidx/collection/a;-><init>(Landroidx/collection/e;)V

    const/4 v2, 0x0

    .line 667
    :goto_0
    iget-object v3, p0, Landroidx/transition/o;->x:[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 668
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 681
    :cond_0
    iget-object v3, p1, Landroidx/transition/v;->c:Landroidx/collection/c;

    iget-object v4, p2, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/o;->a(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/c;Landroidx/collection/c;)V

    goto :goto_1

    .line 677
    :cond_1
    iget-object v3, p1, Landroidx/transition/v;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Landroidx/transition/v;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/o;->a(Landroidx/collection/a;Landroidx/collection/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 673
    :cond_2
    iget-object v3, p1, Landroidx/transition/v;->d:Landroidx/collection/a;

    iget-object v4, p2, Landroidx/transition/v;->d:Landroidx/collection/a;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/o;->a(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    goto :goto_1

    .line 670
    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/transition/o;->a(Landroidx/collection/a;Landroidx/collection/a;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    :cond_4
    invoke-direct {p0, v0, v1}, Landroidx/transition/o;->b(Landroidx/collection/a;Landroidx/collection/a;)V

    return-void
.end method

.method private static a(Landroidx/transition/u;Landroidx/transition/u;Ljava/lang/String;)Z
    .locals 0

    .line 1853
    iget-object p0, p0, Landroidx/transition/u;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1854
    iget-object p1, p1, Landroidx/transition/u;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1864
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method

.method private b(Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Landroidx/transition/u;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 644
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/a;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 645
    invoke-virtual {p1, v1}, Landroidx/collection/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    .line 646
    iget-object v4, v2, Landroidx/transition/u;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 647
    iget-object v4, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v2, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroidx/collection/a;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 654
    invoke-virtual {p2, v0}, Landroidx/collection/a;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/u;

    .line 655
    iget-object v1, p1, Landroidx/transition/u;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 656
    iget-object v1, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object p1, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1599
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1600
    iget-object v1, p0, Landroidx/transition/o;->o:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1603
    :cond_1
    iget-object v1, p0, Landroidx/transition/o;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1606
    :cond_2
    iget-object v1, p0, Landroidx/transition/o;->q:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1607
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1609
    iget-object v4, p0, Landroidx/transition/o;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1614
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1615
    new-instance v1, Landroidx/transition/u;

    invoke-direct {v1, p1}, Landroidx/transition/u;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_5

    .line 1617
    invoke-virtual {p0, v1}, Landroidx/transition/o;->a(Landroidx/transition/u;)V

    goto :goto_1

    .line 1619
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/o;->b(Landroidx/transition/u;)V

    .line 1621
    :goto_1
    iget-object v3, v1, Landroidx/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    invoke-virtual {p0, v1}, Landroidx/transition/o;->c(Landroidx/transition/u;)V

    if-eqz p2, :cond_6

    .line 1624
    iget-object v3, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    invoke-static {v3, p1, v1}, Landroidx/transition/o;->a(Landroidx/transition/v;Landroid/view/View;Landroidx/transition/u;)V

    goto :goto_2

    .line 1626
    :cond_6
    iget-object v3, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    invoke-static {v3, p1, v1}, Landroidx/transition/o;->a(Landroidx/transition/v;Landroid/view/View;Landroidx/transition/u;)V

    .line 1629
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1631
    iget-object v1, p0, Landroidx/transition/o;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1634
    :cond_8
    iget-object v0, p0, Landroidx/transition/o;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1637
    :cond_9
    iget-object v0, p0, Landroidx/transition/o;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1638
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1640
    iget-object v3, p0, Landroidx/transition/o;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1645
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 1646
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 1647
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/transition/o;->c(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method private static r()Landroidx/collection/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/a<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/o$a;",
            ">;"
        }
    .end annotation

    .line 856
    sget-object v0, Landroidx/transition/o;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/a;

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 859
    sget-object v1, Landroidx/transition/o;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroidx/transition/u;Landroidx/transition/u;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(J)Landroidx/transition/o;
    .locals 0

    .line 341
    iput-wide p1, p0, Landroidx/transition/o;->a:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroidx/transition/o;
    .locals 0

    .line 395
    iput-object p1, p0, Landroidx/transition/o;->l:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroidx/transition/o$c;)Landroidx/transition/o;
    .locals 1

    .line 2029
    iget-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    .line 2032
    :cond_0
    iget-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroid/view/View;Z)Landroidx/transition/u;
    .locals 1

    .line 1660
    iget-object v0, p0, Landroidx/transition/o;->d:Landroidx/transition/s;

    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {v0, p1, p2}, Landroidx/transition/s;->a(Landroid/view/View;Z)Landroidx/transition/u;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1663
    iget-object p2, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    .line 1664
    :goto_0
    iget-object p2, p2, Landroidx/transition/v;->a:Landroidx/collection/a;

    invoke-virtual {p2, p1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/u;

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2238
    iget-wide v0, p0, Landroidx/transition/o;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, ") "

    if-eqz v0, :cond_0

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroidx/transition/o;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2241
    :cond_0
    iget-wide v4, p0, Landroidx/transition/o;->k:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/transition/o;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2244
    :cond_1
    iget-object v0, p0, Landroidx/transition/o;->l:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/transition/o;->l:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2247
    :cond_2
    iget-object v0, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2248
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2249
    iget-object v0, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_6

    move-object v0, p1

    move p1, v2

    .line 2250
    :goto_0
    iget-object v3, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    if-lez p1, :cond_4

    .line 2252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2254
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 2257
    :cond_6
    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2258
    :goto_1
    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    if-lez v2, :cond_7

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2262
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2265
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1887
    invoke-virtual {p0}, Landroidx/transition/o;->k()V

    goto :goto_0

    .line 1889
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/o;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1890
    invoke-virtual {p0}, Landroidx/transition/o;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1892
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/o;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1893
    invoke-virtual {p0}, Landroidx/transition/o;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1895
    :cond_2
    invoke-virtual {p0}, Landroidx/transition/o;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1896
    invoke-virtual {p0}, Landroidx/transition/o;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1898
    :cond_3
    new-instance v0, Landroidx/transition/o$3;

    invoke-direct {v0, p0}, Landroidx/transition/o$3;-><init>(Landroidx/transition/o;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1905
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    .line 1770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    .line 1771
    iget-object v0, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    iget-object v1, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    invoke-direct {p0, v0, v1}, Landroidx/transition/o;->a(Landroidx/transition/v;Landroidx/transition/v;)V

    .line 1773
    invoke-static {}, Landroidx/transition/o;->r()Landroidx/collection/a;

    move-result-object v0

    .line 1774
    invoke-virtual {v0}, Landroidx/collection/a;->size()I

    move-result v1

    .line 1775
    invoke-static {p1}, Landroidx/transition/ae;->b(Landroid/view/View;)Landroidx/transition/ao;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_6

    .line 1777
    invoke-virtual {v0, v1}, Landroidx/collection/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_5

    .line 1779
    invoke-virtual {v0, v4}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/o$a;

    if-eqz v5, :cond_5

    .line 1780
    iget-object v6, v5, Landroidx/transition/o$a;->a:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroidx/transition/o$a;->d:Landroidx/transition/ao;

    .line 1781
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1782
    iget-object v6, v5, Landroidx/transition/o$a;->c:Landroidx/transition/u;

    .line 1783
    iget-object v7, v5, Landroidx/transition/o$a;->a:Landroid/view/View;

    .line 1784
    invoke-virtual {p0, v7, v3}, Landroidx/transition/o;->a(Landroid/view/View;Z)Landroidx/transition/u;

    move-result-object v8

    .line 1785
    invoke-virtual {p0, v7, v3}, Landroidx/transition/o;->b(Landroid/view/View;Z)Landroidx/transition/u;

    move-result-object v9

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 1787
    iget-object v9, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    iget-object v9, v9, Landroidx/transition/v;->a:Landroidx/collection/a;

    invoke-virtual {v9, v7}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroidx/transition/u;

    :cond_0
    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    .line 1789
    :cond_1
    iget-object v5, v5, Landroidx/transition/o$a;->e:Landroidx/transition/o;

    .line 1790
    invoke-virtual {v5, v6, v9}, Landroidx/transition/o;->a(Landroidx/transition/u;Landroidx/transition/u;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 1792
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 1801
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1796
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1808
    :cond_6
    iget-object v6, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    iget-object v7, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    iget-object v8, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/transition/o;->a(Landroid/view/ViewGroup;Landroidx/transition/v;Landroidx/transition/v;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1809
    invoke-virtual {p0}, Landroidx/transition/o;->e()V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroidx/transition/v;Landroidx/transition/v;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/v;",
            "Landroidx/transition/v;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/u;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/u;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 707
    invoke-static {}, Landroidx/transition/o;->r()Landroidx/collection/a;

    move-result-object v8

    .line 709
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 710
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_d

    move-object/from16 v13, p4

    .line 712
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/u;

    move-object/from16 v14, p5

    .line 713
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/u;

    if-eqz v2, :cond_0

    .line 714
    iget-object v5, v2, Landroidx/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 717
    iget-object v5, v3, Landroidx/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_7

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 724
    invoke-virtual {v6, v2, v3}, Landroidx/transition/o;->a(Landroidx/transition/u;Landroidx/transition/u;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    .line 744
    invoke-virtual {v6, v7, v2, v3}, Landroidx/transition/o;->a(Landroid/view/ViewGroup;Landroidx/transition/u;Landroidx/transition/u;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_a

    .line 750
    iget-object v15, v3, Landroidx/transition/u;->b:Landroid/view/View;

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/o;->a()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 752
    array-length v11, v4

    if-lez v11, :cond_9

    .line 753
    new-instance v11, Landroidx/transition/u;

    invoke-direct {v11, v15}, Landroidx/transition/u;-><init>(Landroid/view/View;)V

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 754
    iget-object v5, v10, Landroidx/transition/v;->a:Landroidx/collection/a;

    invoke-virtual {v5, v15}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/u;

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    .line 756
    :goto_3
    array-length v13, v4

    if-ge v10, v13, :cond_6

    .line 757
    iget-object v13, v11, Landroidx/transition/u;->a:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Landroidx/transition/u;->a:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 758
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 757
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v5, v19

    goto :goto_3

    :cond_6
    move/from16 v18, v12

    .line 761
    invoke-virtual {v8}, Landroidx/collection/a;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    .line 763
    invoke-virtual {v8, v5}, Landroidx/collection/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 764
    invoke-virtual {v8, v10}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/transition/o$a;

    .line 765
    iget-object v12, v10, Landroidx/transition/o$a;->c:Landroidx/transition/u;

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroidx/transition/o$a;->a:Landroid/view/View;

    if-ne v12, v15, :cond_7

    iget-object v12, v10, Landroidx/transition/o$a;->b:Ljava/lang/String;

    .line 766
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/o;->q()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 767
    iget-object v10, v10, Landroidx/transition/o$a;->c:Landroidx/transition/u;

    invoke-virtual {v10, v11}, Landroidx/transition/u;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v5, v17

    goto :goto_5

    :cond_9
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v5, v17

    const/4 v11, 0x0

    :goto_5
    move-object v10, v5

    move-object v5, v11

    goto :goto_6

    :cond_a
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 776
    iget-object v4, v2, Landroidx/transition/u;->b:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_6
    if-eqz v10, :cond_c

    .line 779
    iget-object v4, v6, Landroidx/transition/o;->g:Landroidx/transition/r;

    if-eqz v4, :cond_b

    .line 780
    invoke-virtual {v4, v7, v6, v2, v3}, Landroidx/transition/r;->a(Landroid/view/ViewGroup;Landroidx/transition/o;Landroidx/transition/u;Landroidx/transition/u;)J

    move-result-wide v2

    .line 781
    iget-object v4, v6, Landroidx/transition/o;->F:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_b
    move-wide v11, v0

    .line 784
    new-instance v13, Landroidx/transition/o$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/o;->q()Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-static/range {p1 .. p1}, Landroidx/transition/ae;->b(Landroid/view/View;)Landroidx/transition/ao;

    move-result-object v4

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroidx/transition/o$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/o;Landroidx/transition/ao;Landroidx/transition/u;)V

    .line 786
    invoke-virtual {v8, v10, v13}, Landroidx/collection/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v0, v6, Landroidx/transition/o;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_c
    :goto_7
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    .line 792
    :cond_d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    .line 793
    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 794
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 795
    iget-object v4, v6, Landroidx/transition/o;->F:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 796
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 797
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1468
    invoke-virtual {p0, p2}, Landroidx/transition/o;->a(Z)V

    .line 1469
    iget-object v0, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/transition/o;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1470
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/transition/o;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1471
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1508
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/o;->c(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    move v0, v1

    .line 1472
    :goto_1
    iget-object v2, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1473
    iget-object v2, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1474
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1476
    new-instance v3, Landroidx/transition/u;

    invoke-direct {v3, v2}, Landroidx/transition/u;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_4

    .line 1478
    invoke-virtual {p0, v3}, Landroidx/transition/o;->a(Landroidx/transition/u;)V

    goto :goto_2

    .line 1480
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/transition/o;->b(Landroidx/transition/u;)V

    .line 1482
    :goto_2
    iget-object v4, v3, Landroidx/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    invoke-virtual {p0, v3}, Landroidx/transition/o;->c(Landroidx/transition/u;)V

    if-eqz p2, :cond_5

    .line 1485
    iget-object v4, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    invoke-static {v4, v2, v3}, Landroidx/transition/o;->a(Landroidx/transition/v;Landroid/view/View;Landroidx/transition/u;)V

    goto :goto_3

    .line 1487
    :cond_5
    iget-object v4, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    invoke-static {v4, v2, v3}, Landroidx/transition/o;->a(Landroidx/transition/v;Landroid/view/View;Landroidx/transition/u;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move p1, v1

    .line 1491
    :goto_4
    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 1492
    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1493
    new-instance v2, Landroidx/transition/u;

    invoke-direct {v2, v0}, Landroidx/transition/u;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8

    .line 1495
    invoke-virtual {p0, v2}, Landroidx/transition/o;->a(Landroidx/transition/u;)V

    goto :goto_5

    .line 1497
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/transition/o;->b(Landroidx/transition/u;)V

    .line 1499
    :goto_5
    iget-object v3, v2, Landroidx/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {p0, v2}, Landroidx/transition/o;->c(Landroidx/transition/u;)V

    if-eqz p2, :cond_9

    .line 1502
    iget-object v3, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    invoke-static {v3, v0, v2}, Landroidx/transition/o;->a(Landroidx/transition/v;Landroid/view/View;Landroidx/transition/u;)V

    goto :goto_6

    .line 1504
    :cond_9
    iget-object v3, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    invoke-static {v3, v0, v2}, Landroidx/transition/o;->a(Landroidx/transition/v;Landroid/view/View;Landroidx/transition/u;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 1510
    iget-object p1, p0, Landroidx/transition/o;->H:Landroidx/collection/a;

    if-eqz p1, :cond_d

    .line 1511
    invoke-virtual {p1}, Landroidx/collection/a;->size()I

    move-result p1

    .line 1512
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_8
    if-ge v0, p1, :cond_b

    .line 1514
    iget-object v2, p0, Landroidx/transition/o;->H:Landroidx/collection/a;

    invoke-virtual {v2, v0}, Landroidx/collection/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1515
    iget-object v3, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    iget-object v3, v3, Landroidx/transition/v;->d:Landroidx/collection/a;

    invoke-virtual {v3, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 1518
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1520
    iget-object v2, p0, Landroidx/transition/o;->H:Landroidx/collection/a;

    invoke-virtual {v2, v1}, Landroidx/collection/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1521
    iget-object v3, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    iget-object v3, v3, Landroidx/transition/v;->d:Landroidx/collection/a;

    invoke-virtual {v3, v2, v0}, Landroidx/collection/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method public a(Landroidx/transition/i;)V
    .locals 0

    if-nez p1, :cond_0

    .line 2073
    sget-object p1, Landroidx/transition/o;->i:Landroidx/transition/i;

    iput-object p1, p0, Landroidx/transition/o;->I:Landroidx/transition/i;

    goto :goto_0

    .line 2075
    :cond_0
    iput-object p1, p0, Landroidx/transition/o;->I:Landroidx/transition/i;

    :goto_0
    return-void
.end method

.method public a(Landroidx/transition/o$b;)V
    .locals 0

    .line 2105
    iput-object p1, p0, Landroidx/transition/o;->G:Landroidx/transition/o$b;

    return-void
.end method

.method public a(Landroidx/transition/r;)V
    .locals 0

    .line 2151
    iput-object p1, p0, Landroidx/transition/o;->g:Landroidx/transition/r;

    return-void
.end method

.method public abstract a(Landroidx/transition/u;)V
.end method

.method a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1575
    iget-object p1, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    iget-object p1, p1, Landroidx/transition/v;->a:Landroidx/collection/a;

    invoke-virtual {p1}, Landroidx/collection/a;->clear()V

    .line 1576
    iget-object p1, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    iget-object p1, p1, Landroidx/transition/v;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1577
    iget-object p1, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    iget-object p1, p1, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {p1}, Landroidx/collection/c;->d()V

    goto :goto_0

    .line 1579
    :cond_0
    iget-object p1, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    iget-object p1, p1, Landroidx/transition/v;->a:Landroidx/collection/a;

    invoke-virtual {p1}, Landroidx/collection/a;->clear()V

    .line 1580
    iget-object p1, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    iget-object p1, p1, Landroidx/transition/v;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1581
    iget-object p1, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    iget-object p1, p1, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {p1}, Landroidx/collection/c;->d()V

    :goto_0
    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 5

    .line 813
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 814
    iget-object v1, p0, Landroidx/transition/o;->o:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 817
    :cond_0
    iget-object v1, p0, Landroidx/transition/o;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 820
    :cond_1
    iget-object v1, p0, Landroidx/transition/o;->q:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 821
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 823
    iget-object v4, p0, Landroidx/transition/o;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 824
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 829
    :cond_3
    iget-object v1, p0, Landroidx/transition/o;->r:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 830
    iget-object v1, p0, Landroidx/transition/o;->r:Ljava/util/ArrayList;

    invoke-static {p1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 834
    :cond_4
    iget-object v1, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/o;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 835
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroidx/transition/o;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 836
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v3

    .line 839
    :cond_7
    iget-object v1, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 842
    :cond_8
    iget-object v0, p0, Landroidx/transition/o;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lgj;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    .line 845
    :cond_9
    iget-object v0, p0, Landroidx/transition/o;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    move v0, v2

    .line 846
    :goto_1
    iget-object v1, p0, Landroidx/transition/o;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 847
    iget-object v1, p0, Landroidx/transition/o;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v3
.end method

.method public a(Landroidx/transition/u;Landroidx/transition/u;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1831
    invoke-virtual {p0}, Landroidx/transition/o;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1833
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1834
    invoke-static {p1, p2, v5}, Landroidx/transition/o;->a(Landroidx/transition/u;Landroidx/transition/u;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1840
    :cond_1
    iget-object v2, p1, Landroidx/transition/u;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1841
    invoke-static {p1, p2, v3}, Landroidx/transition/o;->a(Landroidx/transition/u;Landroidx/transition/u;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move v0, v1

    :cond_3
    return v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 354
    iget-wide v0, p0, Landroidx/transition/o;->a:J

    return-wide v0
.end method

.method public b(J)Landroidx/transition/o;
    .locals 0

    .line 368
    iput-wide p1, p0, Landroidx/transition/o;->k:J

    return-object p0
.end method

.method public b(Landroid/view/View;)Landroidx/transition/o;
    .locals 1

    .line 997
    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Landroidx/transition/o$c;)Landroidx/transition/o;
    .locals 1

    .line 2045
    iget-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 2048
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2049
    iget-object p1, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2050
    iput-object p1, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method b(Landroid/view/View;Z)Landroidx/transition/u;
    .locals 6

    .line 1679
    iget-object v0, p0, Landroidx/transition/o;->d:Landroidx/transition/s;

    if-eqz v0, :cond_0

    .line 1680
    invoke-virtual {v0, p1, p2}, Landroidx/transition/s;->b(Landroid/view/View;Z)Landroidx/transition/u;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1682
    iget-object v0, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 1686
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 1689
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/u;

    if-nez v5, :cond_3

    return-object v1

    .line 1694
    :cond_3
    iget-object v5, v5, Landroidx/transition/u;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 1701
    iget-object p1, p0, Landroidx/transition/o;->z:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    .line 1702
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/transition/u;

    :cond_7
    return-object v1
.end method

.method public abstract b(Landroidx/transition/u;)V
.end method

.method public c()J
    .locals 2

    .line 381
    iget-wide v0, p0, Landroidx/transition/o;->k:J

    return-wide v0
.end method

.method public c(Landroid/view/View;)Landroidx/transition/o;
    .locals 1

    .line 1095
    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method c(Landroidx/transition/u;)V
    .locals 5

    .line 2176
    iget-object v0, p0, Landroidx/transition/o;->g:Landroidx/transition/r;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/transition/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2177
    iget-object v0, p0, Landroidx/transition/o;->g:Landroidx/transition/r;

    invoke-virtual {v0}, Landroidx/transition/r;->a()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 2182
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2183
    iget-object v3, p1, Landroidx/transition/u;->a:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 2189
    iget-object v0, p0, Landroidx/transition/o;->g:Landroidx/transition/r;

    invoke-virtual {v0, p1}, Landroidx/transition/r;->a(Landroidx/transition/u;)V

    :cond_3
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 120
    invoke-virtual {p0}, Landroidx/transition/o;->p()Landroidx/transition/o;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 409
    iget-object v0, p0, Landroidx/transition/o;->l:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    .line 1716
    iget-boolean p1, p0, Landroidx/transition/o;->D:Z

    if-nez p1, :cond_2

    .line 1717
    iget-object p1, p0, Landroidx/transition/o;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_0

    .line 1719
    iget-object v1, p0, Landroidx/transition/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1720
    invoke-static {v1}, Landroidx/transition/a;->a(Landroid/animation/Animator;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1722
    :cond_0
    iget-object p1, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1723
    iget-object p1, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    .line 1724
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1725
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1727
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/o$c;

    invoke-interface {v3, p0}, Landroidx/transition/o$c;->c(Landroidx/transition/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1730
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/o;->C:Z

    :cond_2
    return-void
.end method

.method protected e()V
    .locals 4

    .line 875
    invoke-virtual {p0}, Landroidx/transition/o;->j()V

    .line 876
    invoke-static {}, Landroidx/transition/o;->r()Landroidx/collection/a;

    move-result-object v0

    .line 878
    iget-object v1, p0, Landroidx/transition/o;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 882
    invoke-virtual {v0, v2}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    invoke-virtual {p0}, Landroidx/transition/o;->j()V

    .line 884
    invoke-direct {p0, v2, v0}, Landroidx/transition/o;->a(Landroid/animation/Animator;Landroidx/collection/a;)V

    goto :goto_0

    .line 887
    :cond_1
    iget-object v0, p0, Landroidx/transition/o;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    invoke-virtual {p0}, Landroidx/transition/o;->k()V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 4

    .line 1743
    iget-boolean p1, p0, Landroidx/transition/o;->C:Z

    if-eqz p1, :cond_2

    .line 1744
    iget-boolean p1, p0, Landroidx/transition/o;->D:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1745
    iget-object p1, p0, Landroidx/transition/o;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 1747
    iget-object v1, p0, Landroidx/transition/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1748
    invoke-static {v1}, Landroidx/transition/a;->b(Landroid/animation/Animator;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1750
    :cond_0
    iget-object p1, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1751
    iget-object p1, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    .line 1752
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1753
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1755
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/o$c;

    invoke-interface {v3, p0}, Landroidx/transition/o$c;->d(Landroidx/transition/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1759
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/o;->C:Z

    :cond_2
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Landroidx/transition/o;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Landroidx/transition/o;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Landroidx/transition/o;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1456
    iget-object v0, p0, Landroidx/transition/o;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected j()V
    .locals 5

    .line 1918
    iget v0, p0, Landroidx/transition/o;->B:I

    if-nez v0, :cond_1

    .line 1919
    iget-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1920
    iget-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    .line 1921
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1922
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1924
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/o$c;

    invoke-interface {v4, p0}, Landroidx/transition/o$c;->e(Landroidx/transition/o;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1927
    :cond_0
    iput-boolean v1, p0, Landroidx/transition/o;->D:Z

    .line 1929
    :cond_1
    iget v0, p0, Landroidx/transition/o;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/o;->B:I

    return-void
.end method

.method protected k()V
    .locals 6

    .line 1945
    iget v0, p0, Landroidx/transition/o;->B:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/transition/o;->B:I

    .line 1946
    iget v0, p0, Landroidx/transition/o;->B:I

    if-nez v0, :cond_5

    .line 1947
    iget-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1948
    iget-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    .line 1949
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1950
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1952
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/o$c;

    invoke-interface {v5, p0}, Landroidx/transition/o$c;->b(Landroidx/transition/o;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1955
    :goto_1
    iget-object v3, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    iget-object v3, v3, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {v3}, Landroidx/collection/c;->b()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1956
    iget-object v3, p0, Landroidx/transition/o;->v:Landroidx/transition/v;

    iget-object v3, v3, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {v3, v0}, Landroidx/collection/c;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1958
    invoke-static {v3, v2}, Lgj;->a(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1961
    :goto_2
    iget-object v3, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    iget-object v3, v3, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {v3}, Landroidx/collection/c;->b()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1962
    iget-object v3, p0, Landroidx/transition/o;->w:Landroidx/transition/v;

    iget-object v3, v3, Landroidx/transition/v;->c:Landroidx/collection/c;

    invoke-virtual {v3, v0}, Landroidx/collection/c;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1964
    invoke-static {v3, v2}, Lgj;->a(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1967
    :cond_4
    iput-boolean v1, p0, Landroidx/transition/o;->D:Z

    :cond_5
    return-void
.end method

.method protected l()V
    .locals 4

    .line 2004
    iget-object v0, p0, Landroidx/transition/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2006
    iget-object v1, p0, Landroidx/transition/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 2007
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2009
    :cond_0
    iget-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2010
    iget-object v0, p0, Landroidx/transition/o;->E:Ljava/util/ArrayList;

    .line 2011
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2012
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 2014
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/o$c;

    invoke-interface {v3, p0}, Landroidx/transition/o$c;->a(Landroidx/transition/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public m()Landroidx/transition/i;
    .locals 1

    .line 2090
    iget-object v0, p0, Landroidx/transition/o;->I:Landroidx/transition/i;

    return-object v0
.end method

.method public n()Landroidx/transition/o$b;
    .locals 1

    .line 2120
    iget-object v0, p0, Landroidx/transition/o;->G:Landroidx/transition/o$b;

    return-object v0
.end method

.method public o()Landroidx/transition/r;
    .locals 1

    .line 2168
    iget-object v0, p0, Landroidx/transition/o;->g:Landroidx/transition/r;

    return-object v0
.end method

.method public p()Landroidx/transition/o;
    .locals 3

    const/4 v0, 0x0

    .line 2206
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/o;

    .line 2207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/o;->F:Ljava/util/ArrayList;

    .line 2208
    new-instance v2, Landroidx/transition/v;

    invoke-direct {v2}, Landroidx/transition/v;-><init>()V

    iput-object v2, v1, Landroidx/transition/o;->v:Landroidx/transition/v;

    .line 2209
    new-instance v2, Landroidx/transition/v;

    invoke-direct {v2}, Landroidx/transition/v;-><init>()V

    iput-object v2, v1, Landroidx/transition/o;->w:Landroidx/transition/v;

    .line 2210
    iput-object v0, v1, Landroidx/transition/o;->y:Ljava/util/ArrayList;

    .line 2211
    iput-object v0, v1, Landroidx/transition/o;->z:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 2232
    iget-object v0, p0, Landroidx/transition/o;->j:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2200
    invoke-virtual {p0, v0}, Landroidx/transition/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
