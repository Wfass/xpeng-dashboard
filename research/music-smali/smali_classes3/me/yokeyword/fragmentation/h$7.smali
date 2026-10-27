.class Lme/yokeyword/fragmentation/h$7;
.super Ljava/lang/Object;
.source "TransactionDelegate.java"

# interfaces
.implements Lme/yokeyword/fragmentation/SupportFragmentDelegate$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/animation/Animation;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Landroid/view/ViewGroup;

.field final synthetic e:Lme/yokeyword/fragmentation/h;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/h;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lme/yokeyword/fragmentation/h$7;->e:Lme/yokeyword/fragmentation/h;

    iput-object p2, p0, Lme/yokeyword/fragmentation/h$7;->a:Landroid/view/View;

    iput-object p3, p0, Lme/yokeyword/fragmentation/h$7;->b:Landroid/view/animation/Animation;

    iput-object p4, p0, Lme/yokeyword/fragmentation/h$7;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lme/yokeyword/fragmentation/h$7;->d:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 636
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$7;->a:Landroid/view/View;

    iget-object v1, p0, Lme/yokeyword/fragmentation/h$7;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 638
    iget-object v0, p0, Lme/yokeyword/fragmentation/h$7;->e:Lme/yokeyword/fragmentation/h;

    invoke-static {v0}, Lme/yokeyword/fragmentation/h;->a(Lme/yokeyword/fragmentation/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lme/yokeyword/fragmentation/h$7$1;

    invoke-direct {v1, p0}, Lme/yokeyword/fragmentation/h$7$1;-><init>(Lme/yokeyword/fragmentation/h$7;)V

    iget-object v2, p0, Lme/yokeyword/fragmentation/h$7;->b:Landroid/view/animation/Animation;

    .line 647
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 638
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
