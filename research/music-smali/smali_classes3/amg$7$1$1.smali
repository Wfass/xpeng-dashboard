.class Lamg$7$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamg$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamg$7$1;


# direct methods
.method constructor <init>(Lamg$7$1;)V
    .locals 0

    .line 3175
    iput-object p1, p0, Lamg$7$1$1;->a:Lamg$7$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3178
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 3181
    :cond_0
    iget-object p1, p0, Lamg$7$1$1;->a:Lamg$7$1;

    iget-object p1, p1, Lamg$7$1;->b:Lamg$7;

    iget-object p1, p1, Lamg$7;->e:Lamg;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lamg;->aF:Z

    .line 3182
    iget-object p1, p0, Lamg$7$1$1;->a:Lamg$7$1;

    iget-object p1, p1, Lamg$7$1;->b:Lamg$7;

    iget-boolean p1, p1, Lamg$7;->c:Z

    if-eqz p1, :cond_1

    .line 3183
    iget-object p1, p0, Lamg$7$1$1;->a:Lamg$7$1;

    iget-object p1, p1, Lamg$7$1;->b:Lamg$7;

    iget-object p1, p1, Lamg$7;->e:Lamg;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lamg;->b(Z)Lamm;

    .line 3185
    :cond_1
    iget-object p1, p0, Lamg$7$1$1;->a:Lamg$7$1;

    iget-object p1, p1, Lamg$7$1;->b:Lamg$7;

    iget-object p1, p1, Lamg$7;->e:Lamg;

    iget-object p1, p1, Lamg;->ax:Lamo;

    sget-object v0, Lamo;->LoadFinish:Lamo;

    if-ne p1, v0, :cond_2

    .line 3186
    iget-object p1, p0, Lamg$7$1$1;->a:Lamg$7$1;

    iget-object p1, p1, Lamg$7$1;->b:Lamg$7;

    iget-object p1, p1, Lamg$7;->e:Lamg;

    sget-object v0, Lamo;->None:Lamo;

    invoke-virtual {p1, v0}, Lamg;->a(Lamo;)V

    :cond_2
    return-void
.end method
