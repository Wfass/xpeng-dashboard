.class Laly$13$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laly$13;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laly$13;


# direct methods
.method constructor <init>(Laly$13;)V
    .locals 0

    .line 393
    iput-object p1, p0, Laly$13$1;->a:Laly$13;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 396
    iget-object p1, p0, Laly$13$1;->a:Laly$13;

    iget-object p1, p1, Laly$13;->c:Laly;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laly;->k(Laly;Z)Z

    .line 397
    iget-object p1, p0, Laly$13$1;->a:Laly$13;

    iget-object p1, p1, Laly$13;->c:Laly;

    invoke-static {p1, v0}, Laly;->l(Laly;Z)Z

    return-void
.end method
