.class public final synthetic Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$C-5i5y7fXH_dwxak48n9bzdhkCc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$C-5i5y7fXH_dwxak48n9bzdhkCc;->f$0:Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XToggleDrawableV5$C-5i5y7fXH_dwxak48n9bzdhkCc;->f$0:Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XToggleDrawableV5;->lambda$animateIndicatorColor$1$XToggleDrawableV5(Landroid/animation/ValueAnimator;)V

    return-void
.end method
