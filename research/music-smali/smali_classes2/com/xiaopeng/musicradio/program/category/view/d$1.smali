.class Lcom/xiaopeng/musicradio/program/category/view/d$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RdDetailXHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/view/d;->onFinish(Lcom/lcodecore/tkrefreshlayout/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/c;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/category/view/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/view/d;Lcom/lcodecore/tkrefreshlayout/c;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d$1;->b:Lcom/xiaopeng/musicradio/program/category/view/d;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/category/view/d$1;->a:Lcom/lcodecore/tkrefreshlayout/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d$1;->b:Lcom/xiaopeng/musicradio/program/category/view/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/view/d;->reset()V

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/d$1;->a:Lcom/lcodecore/tkrefreshlayout/c;

    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/c;->a()V

    return-void
.end method
