.class public Lme/yokeyword/fragmentation/helper/internal/c;
.super Ljava/lang/Object;
.source "VisibleDelegate.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/Bundle;

.field private j:Lme/yokeyword/fragmentation/d;

.field private k:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->b:Z

    .line 27
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->d:Z

    .line 28
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->e:Z

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->f:Z

    .line 39
    iput-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->j:Lme/yokeyword/fragmentation/d;

    .line 40
    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic a(Lme/yokeyword/fragmentation/helper/internal/c;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 19
    iput-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lme/yokeyword/fragmentation/helper/internal/c;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->d(Z)V

    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .line 234
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Z)V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->d:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->h()V

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->d(Z)V

    :goto_0
    return-void
.end method

.method private d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 174
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->a:Z

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 177
    iput-boolean v1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->b:Z

    return-void

    .line 181
    :cond_1
    iput-boolean p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 184
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 185
    :cond_2
    iget-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->j:Lme/yokeyword/fragmentation/d;

    invoke-interface {p1}, Lme/yokeyword/fragmentation/d;->onSupportVisible()V

    .line 187
    iget-boolean p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->d:Z

    if-eqz p1, :cond_3

    .line 188
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->d:Z

    .line 189
    iget-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->j:Lme/yokeyword/fragmentation/d;

    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->i:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lme/yokeyword/fragmentation/d;->onLazyInitView(Landroid/os/Bundle;)V

    .line 191
    :cond_3
    invoke-direct {p0, v1}, Lme/yokeyword/fragmentation/helper/internal/c;->e(Z)V

    goto :goto_0

    .line 193
    :cond_4
    invoke-direct {p0, v0}, Lme/yokeyword/fragmentation/helper/internal/c;->e(Z)V

    .line 194
    iget-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->j:Lme/yokeyword/fragmentation/d;

    invoke-interface {p1}, Lme/yokeyword/fragmentation/d;->onSupportInvisible()V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/yokeyword/fragmentation/helper/internal/c;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->b:Z

    const/4 v0, 0x1

    .line 74
    invoke-direct {p0, v0}, Lme/yokeyword/fragmentation/helper/internal/c;->c(Z)V

    :cond_2
    return-void
.end method

.method private e(Z)V
    .locals 3

    .line 199
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->b:Z

    goto :goto_1

    .line 202
    :cond_0
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroidx/fragment/app/t;->d(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 207
    instance-of v2, v1, Lme/yokeyword/fragmentation/d;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    check-cast v1, Lme/yokeyword/fragmentation/d;

    invoke-interface {v1}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v1

    invoke-direct {v1, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->d(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->c:Z

    .line 124
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 128
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroidx/fragment/app/t;->d(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
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

    .line 132
    instance-of v2, v1, Lme/yokeyword/fragmentation/d;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    check-cast v1, Lme/yokeyword/fragmentation/d;

    invoke-interface {v1}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v1

    invoke-direct {v1}, Lme/yokeyword/fragmentation/helper/internal/c;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    .line 163
    new-instance v0, Lme/yokeyword/fragmentation/helper/internal/c$1;

    invoke-direct {v0, p0}, Lme/yokeyword/fragmentation/helper/internal/c$1;-><init>(Lme/yokeyword/fragmentation/helper/internal/c;)V

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->g:Ljava/lang/Runnable;

    .line 170
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private i()Z
    .locals 3

    .line 216
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 218
    instance-of v1, v0, Lme/yokeyword/fragmentation/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 219
    check-cast v0, Lme/yokeyword/fragmentation/d;

    invoke-interface {v0}, Lme/yokeyword/fragmentation/d;->isSupportVisible()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_0
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private j()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->a:Z

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private k()Landroid/os/Handler;
    .locals 2

    .line 242
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->h:Landroid/os/Handler;

    .line 245
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lme/yokeyword/fragmentation/helper/internal/c;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iput-boolean v1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->b:Z

    const/4 v0, 0x1

    .line 83
    invoke-direct {p0, v0}, Lme/yokeyword/fragmentation/helper/internal/c;->d(Z)V

    goto :goto_0

    .line 86
    :cond_0
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->f:Z

    if-eqz v0, :cond_1

    .line 87
    iput-boolean v1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->f:Z

    .line 88
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->i:Landroid/os/Bundle;

    const-string v0, "fragmentation_invisible_when_leave"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->c:Z

    const-string v0, "fragmentation_compat_replace"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->e:Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->f()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->c(Z)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->h()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 94
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->g:Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lme/yokeyword/fragmentation/helper/internal/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iput-boolean v1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->f:Z

    return-void

    .line 100
    :cond_0
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lme/yokeyword/fragmentation/helper/internal/c;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->b:Z

    .line 102
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->c:Z

    .line 103
    invoke-direct {p0, v0}, Lme/yokeyword/fragmentation/helper/internal/c;->d(Z)V

    goto :goto_0

    .line 105
    :cond_1
    iput-boolean v1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->c:Z

    :goto_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->c:Z

    const-string v1, "fragmentation_invisible_when_leave"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->e:Z

    const-string v1, "fragmentation_compat_replace"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 145
    :cond_0
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 146
    invoke-direct {p0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->c(Z)V

    goto :goto_0

    .line 147
    :cond_1
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->a:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->d(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->d:Z

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    iget-boolean p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android:switcher:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 62
    :cond_0
    iget-boolean p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->e:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lme/yokeyword/fragmentation/helper/internal/c;->e:Z

    .line 66
    :cond_1
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/c;->e()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/helper/internal/c;->a:Z

    return v0
.end method
