.class public final synthetic Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$-CYMUfo4utrWtYFrYVmNmoG_Re0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$-CYMUfo4utrWtYFrYVmNmoG_Re0;->f$0:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$-CYMUfo4utrWtYFrYVmNmoG_Re0;->f$0:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->lambda$moveToPointWithAnimation$1$XPopPanel$BackgroundLayout(Landroid/animation/ValueAnimator;)V

    return-void
.end method
