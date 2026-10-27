.class public final Lme/yokeyword/fragmentation/helper/internal/a;
.super Ljava/lang/Object;
.source "AnimatorHelper.java"


# instance fields
.field public a:Landroid/view/animation/Animation;

.field public b:Landroid/view/animation/Animation;

.field public c:Landroid/view/animation/Animation;

.field public d:Landroid/view/animation/Animation;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/content/Context;

.field private h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    .line 24
    invoke-virtual {p0, p2}, Lme/yokeyword/fragmentation/helper/internal/a;->a(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    return-void
.end method

.method private c()Landroid/view/animation/Animation;
    .locals 2

    .line 63
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    sget v1, Lme/yokeyword/fragmentation/e$a;->no_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->a:Landroid/view/animation/Animation;

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lme/yokeyword/fragmentation/helper/internal/a;->h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v1}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->b()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->a:Landroid/view/animation/Animation;

    .line 68
    :goto_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private d()Landroid/view/animation/Animation;
    .locals 2

    .line 72
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    sget v1, Lme/yokeyword/fragmentation/e$a;->no_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lme/yokeyword/fragmentation/helper/internal/a;->h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v1}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->c()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    .line 77
    :goto_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private e()Landroid/view/animation/Animation;
    .locals 2

    .line 81
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    sget v1, Lme/yokeyword/fragmentation/e$a;->no_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->c:Landroid/view/animation/Animation;

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lme/yokeyword/fragmentation/helper/internal/a;->h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v1}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->d()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->c:Landroid/view/animation/Animation;

    .line 86
    :goto_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private f()Landroid/view/animation/Animation;
    .locals 2

    .line 90
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->e()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    sget v1, Lme/yokeyword/fragmentation/e$a;->no_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->d:Landroid/view/animation/Animation;

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lme/yokeyword/fragmentation/helper/internal/a;->h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-virtual {v1}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;->e()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->d:Landroid/view/animation/Animation;

    .line 95
    :goto_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->d:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 2

    .line 36
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->e:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->g:Landroid/content/Context;

    sget v1, Lme/yokeyword/fragmentation/e$a;->no_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->e:Landroid/view/animation/Animation;

    .line 39
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->e:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public a(Landroidx/fragment/app/Fragment;)Landroid/view/animation/Animation;
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_2

    .line 54
    :cond_1
    new-instance p1, Lme/yokeyword/fragmentation/helper/internal/a$2;

    invoke-direct {p1, p0}, Lme/yokeyword/fragmentation/helper/internal/a$2;-><init>(Lme/yokeyword/fragmentation/helper/internal/a;)V

    .line 56
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lme/yokeyword/fragmentation/helper/internal/a;->h:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    .line 29
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/a;->c()Landroid/view/animation/Animation;

    .line 30
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/a;->d()Landroid/view/animation/Animation;

    .line 31
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/a;->e()Landroid/view/animation/Animation;

    .line 32
    invoke-direct {p0}, Lme/yokeyword/fragmentation/helper/internal/a;->f()Landroid/view/animation/Animation;

    return-void
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .line 43
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->f:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lme/yokeyword/fragmentation/helper/internal/a$1;

    invoke-direct {v0, p0}, Lme/yokeyword/fragmentation/helper/internal/a$1;-><init>(Lme/yokeyword/fragmentation/helper/internal/a;)V

    iput-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->f:Landroid/view/animation/Animation;

    .line 47
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/helper/internal/a;->f:Landroid/view/animation/Animation;

    return-object v0
.end method
