.class Lamg$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamg;->setStateLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lamg;


# direct methods
.method constructor <init>(Lamg;Z)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lamg$1;->b:Lamg;

    iput-boolean p2, p0, Lamg$1;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1255
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1258
    :cond_0
    iget-object p1, p0, Lamg$1;->b:Lamg;

    iget-boolean v0, p0, Lamg$1;->a:Z

    invoke-virtual {p1, v0}, Lamg;->setStateDirectLoading(Z)V

    return-void
.end method
