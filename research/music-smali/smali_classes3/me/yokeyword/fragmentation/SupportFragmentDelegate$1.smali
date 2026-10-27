.class Lme/yokeyword/fragmentation/SupportFragmentDelegate$1;
.super Ljava/lang/Object;
.source "SupportFragmentDelegate.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lme/yokeyword/fragmentation/SupportFragmentDelegate;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/SupportFragmentDelegate;Landroid/view/animation/Animation;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate$1;->b:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    iput-object p2, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate$1;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 122
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate$1;->b:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-static {p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)Lme/yokeyword/fragmentation/c;

    move-result-object p1

    invoke-interface {p1}, Lme/yokeyword/fragmentation/c;->getSupportDelegate()Lme/yokeyword/fragmentation/f;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lme/yokeyword/fragmentation/f;->b:Z

    .line 124
    iget-object p1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate$1;->b:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-static {p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Lme/yokeyword/fragmentation/SupportFragmentDelegate;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lme/yokeyword/fragmentation/SupportFragmentDelegate$1$1;

    invoke-direct {v0, p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate$1$1;-><init>(Lme/yokeyword/fragmentation/SupportFragmentDelegate$1;)V

    iget-object v1, p0, Lme/yokeyword/fragmentation/SupportFragmentDelegate$1;->a:Landroid/view/animation/Animation;

    .line 129
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 124
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
