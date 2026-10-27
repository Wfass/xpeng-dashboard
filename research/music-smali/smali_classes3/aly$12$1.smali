.class Laly$12$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laly$12;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laly$12;


# direct methods
.method constructor <init>(Laly$12;)V
    .locals 0

    .line 352
    iput-object p1, p0, Laly$12$1;->a:Laly$12;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 355
    iget-object p1, p0, Laly$12$1;->a:Laly$12;

    iget-object p1, p1, Laly$12;->c:Laly;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laly;->i(Laly;Z)Z

    .line 356
    iget-object p1, p0, Laly$12$1;->a:Laly$12;

    iget-object p1, p1, Laly$12;->c:Laly;

    invoke-static {p1, v0}, Laly;->j(Laly;Z)Z

    return-void
.end method
