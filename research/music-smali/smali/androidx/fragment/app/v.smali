.class abstract Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/v$a;,
        Landroidx/fragment/app/v$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/v$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/v$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field private final e:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Landroidx/fragment/app/v;->c:Z

    .line 90
    iput-boolean v0, p0, Landroidx/fragment/app/v;->d:Z

    .line 93
    iput-object p1, p0, Landroidx/fragment/app/v;->e:Landroid/view/ViewGroup;

    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v$b;
    .locals 3

    .line 135
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/v$b;

    .line 136
    invoke-virtual {v1}, Landroidx/fragment/app/v$b;->e()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/v$b;->f()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/v;
    .locals 0

    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/w;

    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Landroidx/fragment/app/v;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/w;)Landroidx/fragment/app/v;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/view/ViewGroup;Landroidx/fragment/app/w;)Landroidx/fragment/app/v;
    .locals 2

    .line 72
    sget v0, Lhk$b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    instance-of v1, v0, Landroidx/fragment/app/v;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Landroidx/fragment/app/v;

    return-object v0

    .line 77
    :cond_0
    invoke-interface {p1, p0}, Landroidx/fragment/app/w;->a(Landroid/view/ViewGroup;)Landroidx/fragment/app/v;

    move-result-object p1

    .line 78
    sget v0, Lhk$b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method private a(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;Landroidx/fragment/app/n;)V
    .locals 3

    .line 193
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 194
    :try_start_0
    new-instance v1, Lek;

    invoke-direct {v1}, Lek;-><init>()V

    .line 196
    invoke-virtual {p3}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/v$b;->a(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;)V

    .line 201
    monitor-exit v0

    return-void

    .line 203
    :cond_0
    new-instance v2, Landroidx/fragment/app/v$a;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/v$a;-><init>(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;Landroidx/fragment/app/n;Lek;)V

    .line 205
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance p1, Landroidx/fragment/app/v$1;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/v$1;-><init>(Landroidx/fragment/app/v;Landroidx/fragment/app/v$a;)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/v$a;->a(Ljava/lang/Runnable;)V

    .line 217
    new-instance p1, Landroidx/fragment/app/v$2;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/v$2;-><init>(Landroidx/fragment/app/v;Landroidx/fragment/app/v$a;)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/v$a;->a(Ljava/lang/Runnable;)V

    .line 224
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v$b;
    .locals 3

    .line 145
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/v$b;

    .line 146
    invoke-virtual {v1}, Landroidx/fragment/app/v$b;->e()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/v$b;->f()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private f()V
    .locals 4

    .line 338
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/v$b;

    .line 340
    invoke-virtual {v1}, Landroidx/fragment/app/v$b;->d()Landroidx/fragment/app/v$b$a;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/v$b$a;->ADDING:Landroidx/fragment/app/v$b$a;

    if-ne v2, v3, :cond_0

    .line 341
    invoke-virtual {v1}, Landroidx/fragment/app/v$b;->e()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/v$b$b;->a(I)Landroidx/fragment/app/v$b$b;

    move-result-object v2

    .line 344
    sget-object v3, Landroidx/fragment/app/v$b$a;->NONE:Landroidx/fragment/app/v$b$a;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/v$b;->a(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/fragment/app/v;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method a(Landroidx/fragment/app/n;)Landroidx/fragment/app/v$b$a;
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroidx/fragment/app/v$b;->d()Landroidx/fragment/app/v$b$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/fragment/app/v;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v$b;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 126
    sget-object v1, Landroidx/fragment/app/v$b$a;->NONE:Landroidx/fragment/app/v$b$a;

    if-ne v0, v1, :cond_2

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/v$b;->d()Landroidx/fragment/app/v$b$a;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method a(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/n;)V
    .locals 2

    const/4 v0, 0x2

    .line 155
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p2}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    .line 156
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    sget-object v0, Landroidx/fragment/app/v$b$a;->ADDING:Landroidx/fragment/app/v$b$a;

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;Landroidx/fragment/app/n;)V

    return-void
.end method

.method abstract a(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/v$b;",
            ">;Z)V"
        }
    .end annotation
.end method

.method a(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Landroidx/fragment/app/v;->c:Z

    return-void
.end method

.method b()V
    .locals 6

    .line 232
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 233
    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/v;->f()V

    const/4 v1, 0x0

    .line 235
    iput-boolean v1, p0, Landroidx/fragment/app/v;->d:Z

    .line 236
    iget-object v1, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 237
    iget-object v2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/v$b;

    .line 239
    invoke-virtual {v2}, Landroidx/fragment/app/v$b;->e()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, Landroidx/fragment/app/v$b$b;->a(Landroid/view/View;)Landroidx/fragment/app/v$b$b;

    move-result-object v3

    .line 240
    invoke-virtual {v2}, Landroidx/fragment/app/v$b;->c()Landroidx/fragment/app/v$b$b;

    move-result-object v4

    sget-object v5, Landroidx/fragment/app/v$b$b;->VISIBLE:Landroidx/fragment/app/v$b$b;

    if-ne v4, v5, :cond_0

    sget-object v4, Landroidx/fragment/app/v$b$b;->VISIBLE:Landroidx/fragment/app/v$b$b;

    if-eq v3, v4, :cond_0

    .line 242
    invoke-virtual {v2}, Landroidx/fragment/app/v$b;->e()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/fragment/app/v;->d:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 249
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b(Landroidx/fragment/app/n;)V
    .locals 2

    const/4 v0, 0x2

    .line 164
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    sget-object v0, Landroidx/fragment/app/v$b$b;->VISIBLE:Landroidx/fragment/app/v$b$b;

    sget-object v1, Landroidx/fragment/app/v$b$a;->NONE:Landroidx/fragment/app/v$b$a;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;Landroidx/fragment/app/n;)V

    return-void
.end method

.method c()V
    .locals 1

    .line 253
    iget-boolean v0, p0, Landroidx/fragment/app/v;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Landroidx/fragment/app/v;->d:Z

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/v;->d()V

    :cond_0
    return-void
.end method

.method c(Landroidx/fragment/app/n;)V
    .locals 2

    const/4 v0, 0x2

    .line 173
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p1}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    .line 174
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    sget-object v0, Landroidx/fragment/app/v$b$b;->GONE:Landroidx/fragment/app/v$b$b;

    sget-object v1, Landroidx/fragment/app/v$b$a;->NONE:Landroidx/fragment/app/v$b$a;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;Landroidx/fragment/app/n;)V

    return-void
.end method

.method d()V
    .locals 7

    .line 260
    iget-boolean v0, p0, Landroidx/fragment/app/v;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/v;->e:Landroid/view/ViewGroup;

    invoke-static {v0}, Lgj;->E(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/v;->e()V

    .line 268
    iput-boolean v1, p0, Landroidx/fragment/app/v;->c:Z

    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/v;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    iget-object v3, p0, Landroidx/fragment/app/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 276
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/v$b;

    const/4 v4, 0x2

    .line 277
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/v$b;->g()V

    .line 282
    invoke-virtual {v3}, Landroidx/fragment/app/v$b;->h()Z

    move-result v4

    if-nez v4, :cond_2

    .line 285
    iget-object v4, p0, Landroidx/fragment/app/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_4
    invoke-direct {p0}, Landroidx/fragment/app/v;->f()V

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    iget-object v3, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 293
    iget-object v3, p0, Landroidx/fragment/app/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/v$b;

    .line 295
    invoke-virtual {v4}, Landroidx/fragment/app/v$b;->a()V

    goto :goto_1

    .line 297
    :cond_5
    iget-boolean v3, p0, Landroidx/fragment/app/v;->c:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/v;->a(Ljava/util/List;Z)V

    .line 298
    iput-boolean v1, p0, Landroidx/fragment/app/v;->c:Z

    .line 300
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method d(Landroidx/fragment/app/n;)V
    .locals 2

    const/4 v0, 0x2

    .line 182
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p1}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    sget-object v0, Landroidx/fragment/app/v$b$b;->REMOVED:Landroidx/fragment/app/v$b$b;

    sget-object v1, Landroidx/fragment/app/v$b$a;->REMOVING:Landroidx/fragment/app/v$b$a;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/v$b$b;Landroidx/fragment/app/v$b$a;Landroidx/fragment/app/n;)V

    return-void
.end method

.method e()V
    .locals 9

    .line 304
    iget-object v0, p0, Landroidx/fragment/app/v;->e:Landroid/view/ViewGroup;

    invoke-static {v0}, Lgj;->E(Landroid/view/View;)Z

    move-result v0

    .line 305
    iget-object v1, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 306
    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/v;->f()V

    .line 307
    iget-object v2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/v$b;

    .line 308
    invoke-virtual {v3}, Landroidx/fragment/app/v$b;->a()V

    goto :goto_0

    .line 312
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/v;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 313
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/v$b;

    .line 314
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "FragmentManager"

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v6, ""

    goto :goto_2

    .line 317
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/fragment/app/v;->e:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not attached to window. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Cancelling running operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/v$b;->g()V

    goto :goto_1

    .line 324
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/v$b;

    .line 326
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "FragmentManager"

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v7, ""

    goto :goto_4

    .line 329
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/v;->e:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/v$b;->g()V

    goto :goto_3

    .line 334
    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
