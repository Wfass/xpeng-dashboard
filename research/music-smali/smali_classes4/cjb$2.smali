.class Lcjb$2;
.super Ljava/lang/Object;
.source "SimpleSlider.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjb;->animateProgress(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcjb;


# direct methods
.method constructor <init>(Lcjb;IZ)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcjb$2;->c:Lcjb;

    iput p2, p0, Lcjb$2;->a:I

    iput-boolean p3, p0, Lcjb$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 922
    iget-object p1, p0, Lcjb$2;->c:Lcjb;

    iget v0, p0, Lcjb$2;->a:I

    iget-boolean v1, p0, Lcjb$2;->b:Z

    invoke-static {p1, v0, v1}, Lcjb;->access$400(Lcjb;IZ)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 917
    iget-object p1, p0, Lcjb$2;->c:Lcjb;

    iget v0, p0, Lcjb$2;->a:I

    iget-boolean v1, p0, Lcjb$2;->b:Z

    invoke-static {p1, v0, v1}, Lcjb;->access$400(Lcjb;IZ)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
