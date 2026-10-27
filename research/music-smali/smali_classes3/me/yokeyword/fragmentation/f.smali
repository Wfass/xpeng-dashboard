.class public Lme/yokeyword/fragmentation/f;
.super Ljava/lang/Object;
.source "SupportActivityDelegate.java"


# instance fields
.field a:Z

.field b:Z

.field private c:Lme/yokeyword/fragmentation/c;

.field private d:Landroidx/fragment/app/FragmentActivity;

.field private e:Lme/yokeyword/fragmentation/h;

.field private f:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

.field private g:I

.field private h:Lme/yokeyword/fragmentation/debug/b;


# direct methods
.method public constructor <init>(Lme/yokeyword/fragmentation/c;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/f;->a:Z

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lme/yokeyword/fragmentation/f;->b:Z

    .line 27
    iput v0, p0, Lme/yokeyword/fragmentation/f;->g:I

    .line 31
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 33
    iput-object p1, p0, Lme/yokeyword/fragmentation/f;->c:Lme/yokeyword/fragmentation/c;

    .line 34
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iput-object p1, p0, Lme/yokeyword/fragmentation/f;->d:Landroidx/fragment/app/FragmentActivity;

    .line 35
    new-instance p1, Lme/yokeyword/fragmentation/debug/b;

    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->d:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Lme/yokeyword/fragmentation/debug/b;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lme/yokeyword/fragmentation/f;->h:Lme/yokeyword/fragmentation/debug/b;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must extends FragmentActivity/AppCompatActivity"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lme/yokeyword/fragmentation/f;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 18
    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lme/yokeyword/fragmentation/f;)Lme/yokeyword/fragmentation/h;
    .locals 0

    .line 18
    iget-object p0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    return-object p0
.end method

.method static synthetic c(Lme/yokeyword/fragmentation/f;)Lme/yokeyword/fragmentation/c;
    .locals 0

    .line 18
    iget-object p0, p0, Lme/yokeyword/fragmentation/f;->c:Lme/yokeyword/fragmentation/c;

    return-object p0
.end method

.method private j()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 293
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->d:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method private k()Lme/yokeyword/fragmentation/d;
    .locals 1

    .line 297
    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lme/yokeyword/fragmentation/g;->a(Landroidx/fragment/app/FragmentManager;)Lme/yokeyword/fragmentation/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lme/yokeyword/fragmentation/a;
    .locals 5

    .line 43
    new-instance v0, Lme/yokeyword/fragmentation/a$a;

    iget-object v1, p0, Lme/yokeyword/fragmentation/f;->c:Lme/yokeyword/fragmentation/c;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->k()Lme/yokeyword/fragmentation/d;

    move-result-object v2

    invoke-virtual {p0}, Lme/yokeyword/fragmentation/f;->b()Lme/yokeyword/fragmentation/h;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lme/yokeyword/fragmentation/a$a;-><init>(Landroidx/fragment/app/FragmentActivity;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/h;Z)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 112
    iput p1, p0, Lme/yokeyword/fragmentation/f;->g:I

    return-void
.end method

.method public varargs a(II[Lme/yokeyword/fragmentation/d;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;II[Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public a(ILme/yokeyword/fragmentation/d;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0, p1, p2, v0, v1}, Lme/yokeyword/fragmentation/f;->a(ILme/yokeyword/fragmentation/d;ZZ)V

    return-void
.end method

.method public a(ILme/yokeyword/fragmentation/d;ZZ)V
    .locals 6

    .line 195
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;ILme/yokeyword/fragmentation/d;ZZ)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/f;->b()Lme/yokeyword/fragmentation/h;

    move-result-object p1

    iput-object p1, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    .line 48
    iget-object p1, p0, Lme/yokeyword/fragmentation/f;->c:Lme/yokeyword/fragmentation/c;

    invoke-interface {p1}, Lme/yokeyword/fragmentation/c;->onCreateFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object p1

    iput-object p1, p0, Lme/yokeyword/fragmentation/f;->f:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    .line 49
    iget-object p1, p0, Lme/yokeyword/fragmentation/f;->h:Lme/yokeyword/fragmentation/debug/b;

    invoke-static {}, Lme/yokeyword/fragmentation/b;->a()Lme/yokeyword/fragmentation/b;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/b;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lme/yokeyword/fragmentation/debug/b;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, p1, p2, v0}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Class;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Class;ZLjava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 285
    invoke-virtual {p0, p1, p2, p3, v0}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Class;ZLjava/lang/Runnable;I)V

    return-void
.end method

.method public a(Ljava/lang/Class;ZLjava/lang/Runnable;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Runnable;",
            "I)V"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lme/yokeyword/fragmentation/h;->a(Ljava/lang/String;ZLjava/lang/Runnable;Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V
    .locals 3

    .line 77
    iput-object p1, p0, Lme/yokeyword/fragmentation/f;->f:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    .line 79
    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/t;->d(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 80
    instance-of v2, v1, Lme/yokeyword/fragmentation/d;

    if-eqz v2, :cond_0

    .line 81
    check-cast v1, Lme/yokeyword/fragmentation/d;

    .line 82
    invoke-interface {v1}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v1

    .line 83
    iget-boolean v2, v1, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->g:Z

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p1}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->a()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v2

    iput-object v2, v1, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    .line 85
    iget-object v2, v1, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, v1, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object v1, v1, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v2, v1}, Lme/yokeyword/fragmentation/helper/internal/a;->a(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, p1, v0}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/d;I)V
    .locals 7

    .line 235
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->k()Lme/yokeyword/fragmentation/d;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;III)V

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/d;Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/fragmentation/d;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->k()Lme/yokeyword/fragmentation/d;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/d;Z)V
    .locals 7

    .line 257
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->k()Lme/yokeyword/fragmentation/d;

    move-result-object v2

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    :goto_0
    move v6, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;III)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 182
    iget-boolean p1, p0, Lme/yokeyword/fragmentation/f;->b:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b()Lme/yokeyword/fragmentation/h;
    .locals 2

    .line 53
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/f;->c:Lme/yokeyword/fragmentation/c;

    invoke-direct {v0, v1}, Lme/yokeyword/fragmentation/h;-><init>(Lme/yokeyword/fragmentation/c;)V

    iput-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    .line 56
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lme/yokeyword/fragmentation/f;->h:Lme/yokeyword/fragmentation/debug/b;

    invoke-static {}, Lme/yokeyword/fragmentation/b;->a()Lme/yokeyword/fragmentation/b;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/b;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lme/yokeyword/fragmentation/debug/b;->b(I)V

    return-void
.end method

.method public b(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, p1, v0}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;I)V

    return-void
.end method

.method public b(Lme/yokeyword/fragmentation/d;I)V
    .locals 7

    .line 242
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->k()Lme/yokeyword/fragmentation/d;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;III)V

    return-void
.end method

.method public c()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 1

    .line 69
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->f:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->a()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    return-object v0
.end method

.method public c(Lme/yokeyword/fragmentation/d;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->k()Lme/yokeyword/fragmentation/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lme/yokeyword/fragmentation/h;->b(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public d()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 1

    .line 103
    new-instance v0, Lme/yokeyword/fragmentation/anim/DefaultVerticalAnimator;

    invoke-direct {v0}, Lme/yokeyword/fragmentation/anim/DefaultVerticalAnimator;-><init>()V

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 116
    iget v0, p0, Lme/yokeyword/fragmentation/f;->g:I

    return v0
.end method

.method public f()V
    .locals 3

    .line 148
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    iget-object v0, v0, Lme/yokeyword/fragmentation/h;->a:Lcdc;

    new-instance v1, Lme/yokeyword/fragmentation/f$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lme/yokeyword/fragmentation/f$1;-><init>(Lme/yokeyword/fragmentation/f;I)V

    invoke-virtual {v0, v1}, Lcdc;->a(Lcdb;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/f;->i()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->d:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Landroidx/core/app/a;->b(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 177
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->h:Lme/yokeyword/fragmentation/debug/b;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/debug/b;->a()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 264
    iget-object v0, p0, Lme/yokeyword/fragmentation/f;->e:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/f;->j()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method
