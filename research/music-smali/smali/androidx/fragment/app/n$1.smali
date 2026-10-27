.class Landroidx/fragment/app/n$1;
.super Ljava/lang/Object;
.source "FragmentStateManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/n;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;Landroid/view/View;)V
    .locals 0

    .line 534
    iput-object p1, p0, Landroidx/fragment/app/n$1;->b:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/fragment/app/n$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 537
    iget-object p1, p0, Landroidx/fragment/app/n$1;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 538
    iget-object p1, p0, Landroidx/fragment/app/n$1;->a:Landroid/view/View;

    invoke-static {p1}, Lgj;->r(Landroid/view/View;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
