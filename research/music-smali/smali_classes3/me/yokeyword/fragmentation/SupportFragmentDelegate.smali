.class public Lme/yokeyword/fragmentation/SupportFragmentDelegate;
.super Ljava/lang/Object;
.source "SupportFragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yokeyword/fragmentation/SupportFragmentDelegate$a;
    }
.end annotation


# instance fields
.field a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

.field b:Z

.field c:I

.field d:Lme/yokeyword/fragmentation/helper/internal/b;

.field e:Landroid/os/Bundle;

.field protected f:Landroidx/fragment/app/FragmentActivity;

.field g:Z

.field h:Lme/yokeyword/fragmentation/SupportFragmentDelegate$a;

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

.field private n:Landroid/os/Handler;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lme/yokeyword/fragmentation/h;

.field private s:Lme/yokeyword/fragmentation/helper/internal/c;

.field private t:Landroid/os/Bundle;

.field private u:Lme/yokeyword/fragmentation/d;

.field private v:Landroidx/fragment/app/Fragment;

.field private w:Lme/yokeyword/fragmentation/c;

.field private x:Z

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->i:I

    const/high16 v0, -0x80000000

    .line 37
    iput v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->k:I

    iput v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->l:I

    iput v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->m:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o:Z

    .line 42
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->q:Z

    .line 56
    iput-boolean v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->g:Z

    .line 583
    new-instance v0, Lme/yokeyword/fragmentation/SupportFragmentDelegate$3;

    invoke-direct {v0, p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate$3;-><init>(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)V

    iput-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->y:Ljava/lang/Runnable;

    .line 62
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

    .line 65
    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must extends Fragment"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)Lme/yokeyword/fragmentation/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    return-object p0
.end method

.method private a(Landroid/view/animation/Animation;)V
    .locals 4

    .line 569
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->y:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 570
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    invoke-interface {p1}, Lme/yokeyword/fragmentation/c;->getSupportDelegate()Lme/yokeyword/fragmentation/f;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lme/yokeyword/fragmentation/f;->b:Z

    .line 572
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->h:Lme/yokeyword/fragmentation/SupportFragmentDelegate$a;

    if-eqz p1, :cond_0

    .line 573
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lme/yokeyword/fragmentation/SupportFragmentDelegate$2;

    invoke-direct {v0, p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate$2;-><init>(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->n:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 24
    iget-object p0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic d(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)Landroid/os/Bundle;
    .locals 0

    .line 24
    iget-object p0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->t:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic e(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)Lme/yokeyword/fragmentation/d;
    .locals 0

    .line 24
    iget-object p0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

    return-object p0
.end method

.method static synthetic f(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->x:Z

    return p0
.end method

.method static synthetic g(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)J
    .locals 2

    .line 24
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic h(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)J
    .locals 2

    .line 24
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method private s()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 560
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 0

    .line 608
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v()V

    return-void
.end method

.method private u()I
    .locals 4

    .line 628
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 631
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 632
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method private v()V
    .locals 2

    .line 637
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 638
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    invoke-interface {v0}, Lme/yokeyword/fragmentation/c;->getSupportDelegate()Lme/yokeyword/fragmentation/f;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/yokeyword/fragmentation/f;->b:Z

    return-void
.end method

.method private w()Landroid/os/Handler;
    .locals 2

    .line 642
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->n:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->n:Landroid/os/Handler;

    .line 645
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private x()Landroid/view/animation/Animation;
    .locals 2

    .line 660
    iget v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->k:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 661
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lme/yokeyword/fragmentation/helper/internal/a;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object v0, v0, Lme/yokeyword/fragmentation/helper/internal/a;->a:Landroid/view/animation/Animation;

    return-object v0

    .line 666
    :cond_0
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private y()J
    .locals 2

    .line 675
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->x()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method private z()J
    .locals 2

    .line 699
    iget v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->m:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lme/yokeyword/fragmentation/helper/internal/a;->d:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object v0, v0, Lme/yokeyword/fragmentation/helper/internal/a;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 705
    :cond_0
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 707
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-wide/16 v0, 0x12c

    return-wide v0
.end method


# virtual methods
.method public a(IZI)Landroid/view/animation/Animation;
    .locals 1

    .line 144
    iget-object p3, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    invoke-interface {p3}, Lme/yokeyword/fragmentation/c;->getSupportDelegate()Lme/yokeyword/fragmentation/f;

    move-result-object p3

    iget-boolean p3, p3, Lme/yokeyword/fragmentation/f;->a:Z

    const/16 v0, 0x2002

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b:Z

    if-eqz p3, :cond_0

    goto :goto_2

    :cond_0
    const/16 p3, 0x1001

    if-ne p1, p3, :cond_3

    if-eqz p2, :cond_2

    .line 153
    iget p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->i:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 154
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    invoke-virtual {p1}, Lme/yokeyword/fragmentation/helper/internal/a;->a()Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object p1, p1, Lme/yokeyword/fragmentation/helper/internal/a;->a:Landroid/view/animation/Animation;

    .line 157
    invoke-direct {p0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Landroid/view/animation/Animation;)V

    :goto_0
    return-object p1

    .line 161
    :cond_2
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object p1, p1, Lme/yokeyword/fragmentation/helper/internal/a;->d:Landroid/view/animation/Animation;

    return-object p1

    :cond_3
    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    .line 164
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object p1, p1, Lme/yokeyword/fragmentation/helper/internal/a;->c:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object p1, p1, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    :goto_1
    return-object p1

    .line 166
    :cond_5
    iget-boolean p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->j:Z

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 167
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->t()V

    :cond_6
    if-nez p2, :cond_7

    .line 171
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object p2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Lme/yokeyword/fragmentation/helper/internal/a;->a(Landroidx/fragment/app/Fragment;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1

    :cond_8
    :goto_2
    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_9

    .line 146
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    invoke-virtual {p1}, Lme/yokeyword/fragmentation/helper/internal/a;->b()Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 148
    :cond_9
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    invoke-virtual {p1}, Lme/yokeyword/fragmentation/helper/internal/a;->a()Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public a()Lme/yokeyword/fragmentation/a;
    .locals 5

    .line 73
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lme/yokeyword/fragmentation/a$a;

    iget-object v2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    iget-object v3, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lme/yokeyword/fragmentation/a$a;-><init>(Landroidx/fragment/app/FragmentActivity;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/h;Z)V

    return-object v1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not attach!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(IILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public varargs a(II[Lme/yokeyword/fragmentation/d;)V
    .locals 2

    .line 434
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->s()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;II[Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 3

    .line 347
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "fragment_arg_result_record"

    .line 348
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lme/yokeyword/fragmentation/helper/internal/ResultRecord;

    if-eqz v0, :cond_1

    .line 354
    iput p1, v0, Lme/yokeyword/fragmentation/helper/internal/ResultRecord;->resultCode:I

    .line 355
    iput-object p2, v0, Lme/yokeyword/fragmentation/helper/internal/ResultRecord;->resultBundle:Landroid/os/Bundle;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILme/yokeyword/fragmentation/d;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 423
    invoke-virtual {p0, p1, p2, v0, v1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(ILme/yokeyword/fragmentation/d;ZZ)V

    return-void
.end method

.method public a(ILme/yokeyword/fragmentation/d;ZZ)V
    .locals 6

    .line 427
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->s()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;ILme/yokeyword/fragmentation/d;ZZ)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 80
    instance-of v0, p1, Lme/yokeyword/fragmentation/c;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p1

    check-cast v0, Lme/yokeyword/fragmentation/c;

    iput-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    .line 82
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iput-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f:Landroidx/fragment/app/FragmentActivity;

    .line 83
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    invoke-interface {p1}, Lme/yokeyword/fragmentation/c;->getSupportDelegate()Lme/yokeyword/fragmentation/f;

    move-result-object p1

    invoke-virtual {p1}, Lme/yokeyword/fragmentation/f;->b()Lme/yokeyword/fragmentation/h;

    move-result-object p1

    iput-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must impl ISupportActivity!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->a(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fragmentation_arg_container"

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const-string v3, "fragmentation_arg_root_status"

    .line 94
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->i:I

    const-string v3, "fragmentation_arg_is_shared_element"

    .line 95
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->j:Z

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->c:I

    const-string v3, "fragmentation_arg_replace"

    .line 97
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->p:Z

    const/high16 v2, -0x80000000

    const-string v3, "fragmentation_arg_custom_enter_anim"

    .line 98
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->k:I

    const-string v3, "fragmentation_arg_custom_exit_anim"

    .line 99
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->l:I

    const-string v3, "fragmentation_arg_custom_pop_exit_anim"

    .line 100
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->m:I

    :cond_0
    if-nez p1, :cond_1

    .line 104
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->j()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 107
    iput-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->t:Landroid/os/Bundle;

    const-string v0, "fragmentation_state_save_animator"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    iput-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    const-string v0, "fragmentation_state_save_status"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->q:Z

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->c:I

    .line 113
    :goto_0
    new-instance p1, Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    invoke-direct {p1, v0, v1}, Lme/yokeyword/fragmentation/helper/internal/a;-><init>(Landroid/content/Context;Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    iput-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    .line 115
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->x()Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 118
    :cond_2
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->x()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lme/yokeyword/fragmentation/SupportFragmentDelegate$1;

    invoke-direct {v1, p0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate$1;-><init>(Lme/yokeyword/fragmentation/SupportFragmentDelegate;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 415
    invoke-static {p1}, Lme/yokeyword/fragmentation/g;->a(Landroid/view/View;)V

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

    .line 528
    invoke-virtual {p0, p1, p2, v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Ljava/lang/Class;ZLjava/lang/Runnable;)V

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

    .line 536
    invoke-virtual {p0, p1, p2, p3, v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Ljava/lang/Class;ZLjava/lang/Runnable;I)V

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

    .line 540
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lme/yokeyword/fragmentation/h;->a(Ljava/lang/String;ZLjava/lang/Runnable;Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    invoke-virtual {p0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V
    .locals 1

    .line 332
    iput-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    .line 333
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/helper/internal/a;->a(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    :cond_0
    const/4 p1, 0x0

    .line 336
    iput-boolean p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->g:Z

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, p1, v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/d;I)V
    .locals 7

    .line 462
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

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

    .line 480
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->s()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public a(Lme/yokeyword/fragmentation/d;Z)V
    .locals 7

    .line 484
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

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

.method public a(Z)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/helper/internal/c;->a()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->b(Landroid/os/Bundle;)V

    .line 180
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    const-string v1, "fragmentation_state_save_animator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    const-string v1, "fragmentation_state_save_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    iget v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->c:I

    const-string v1, "fragmentation_arg_container"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 612
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->i:I

    if-nez v0, :cond_3

    .line 614
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    invoke-interface {v0}, Lme/yokeyword/fragmentation/c;->getSupportDelegate()Lme/yokeyword/fragmentation/f;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 620
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u()I

    move-result v0

    .line 621
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, p1, p2, v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Ljava/lang/Class;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/Class;ZLjava/lang/Runnable;)V
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

    .line 548
    invoke-virtual {p0, p1, p2, p3, v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Ljava/lang/Class;ZLjava/lang/Runnable;I)V

    return-void
.end method

.method public b(Ljava/lang/Class;ZLjava/lang/Runnable;I)V
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

    .line 552
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->s()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lme/yokeyword/fragmentation/h;->a(Ljava/lang/String;ZLjava/lang/Runnable;Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p0, p1, v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Lme/yokeyword/fragmentation/d;I)V

    return-void
.end method

.method public b(Lme/yokeyword/fragmentation/d;I)V
    .locals 7

    .line 469
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;III)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 234
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/helper/internal/c;->b()V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 3

    .line 186
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/helper/internal/c;->c(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v2

    iput-boolean v2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->x:Z

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 192
    invoke-virtual {p0, v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_4

    .line 196
    iget p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->i:I

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    .line 198
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android:switcher:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_1
    iget-boolean p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->p:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o:Z

    if-nez p1, :cond_2

    goto :goto_1

    .line 201
    :cond_2
    iget p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->k:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_3

    .line 202
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    .line 203
    invoke-virtual {p1}, Lme/yokeyword/fragmentation/helper/internal/a;->a()Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 202
    :goto_0
    invoke-direct {p0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 200
    :cond_4
    :goto_1
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v()V

    .line 206
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o:Z

    :cond_6
    return-void
.end method

.method public c(Lme/yokeyword/fragmentation/d;)V
    .locals 3

    .line 476
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

    invoke-virtual {v0, v1, v2, p1}, Lme/yokeyword/fragmentation/h;->b(Landroidx/fragment/app/FragmentManager;Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 220
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    invoke-interface {v0}, Lme/yokeyword/fragmentation/c;->getSupportDelegate()Lme/yokeyword/fragmentation/f;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/yokeyword/fragmentation/f;->b:Z

    .line 221
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/helper/internal/c;->c()V

    .line 222
    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    .line 226
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->e:Landroid/os/Bundle;

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 299
    invoke-virtual {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->o()Lme/yokeyword/fragmentation/helper/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/helper/internal/c;->d()Z

    move-result v0

    return v0
.end method

.method public i()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 1

    .line 307
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    invoke-interface {v0}, Lme/yokeyword/fragmentation/c;->getFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    return-object v0
.end method

.method public j()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 2

    .line 316
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

    invoke-interface {v0}, Lme/yokeyword/fragmentation/d;->onCreateFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    .line 321
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->w:Lme/yokeyword/fragmentation/c;

    invoke-interface {v0}, Lme/yokeyword/fragmentation/c;->getFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    .line 325
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    return-object v0

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fragment has not been attached to Activity!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 1

    .line 405
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 408
    invoke-static {v0}, Lme/yokeyword/fragmentation/g;->b(Landroid/view/View;)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 508
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 515
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->r:Lme/yokeyword/fragmentation/h;

    invoke-direct {p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->s()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yokeyword/fragmentation/h;->a(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public o()Lme/yokeyword/fragmentation/helper/internal/c;
    .locals 2

    .line 649
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->s:Lme/yokeyword/fragmentation/helper/internal/c;

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Lme/yokeyword/fragmentation/helper/internal/c;

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->u:Lme/yokeyword/fragmentation/d;

    invoke-direct {v0, v1}, Lme/yokeyword/fragmentation/helper/internal/c;-><init>(Lme/yokeyword/fragmentation/d;)V

    iput-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->s:Lme/yokeyword/fragmentation/helper/internal/c;

    .line 652
    :cond_0
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->s:Lme/yokeyword/fragmentation/helper/internal/c;

    return-object v0
.end method

.method public p()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 656
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public q()J
    .locals 2

    .line 683
    iget v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->l:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 684
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object v0, v0, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 689
    :cond_0
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 691
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method r()Landroid/view/animation/Animation;
    .locals 2

    .line 716
    iget v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->l:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 717
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->mAnimHelper:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object v0, v0, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    return-object v0

    .line 722
    :cond_0
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
