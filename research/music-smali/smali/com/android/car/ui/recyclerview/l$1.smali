.class Lcom/android/car/ui/recyclerview/l$1;
.super Ljava/lang/Object;
.source "OnContinuousScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/ui/recyclerview/l;


# direct methods
.method constructor <init>(Lcom/android/car/ui/recyclerview/l;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/l$1;->a:Lcom/android/car/ui/recyclerview/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/l$1;->a:Lcom/android/car/ui/recyclerview/l;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/l;->a(Lcom/android/car/ui/recyclerview/l;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/l$1;->a:Lcom/android/car/ui/recyclerview/l;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/l;->c(Lcom/android/car/ui/recyclerview/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/l$1;->a:Lcom/android/car/ui/recyclerview/l;

    invoke-static {v1}, Lcom/android/car/ui/recyclerview/l;->b(Lcom/android/car/ui/recyclerview/l;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/l$1;->a:Lcom/android/car/ui/recyclerview/l;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/l;->d(Lcom/android/car/ui/recyclerview/l;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/l$1;->a:Lcom/android/car/ui/recyclerview/l;

    invoke-static {v1}, Lcom/android/car/ui/recyclerview/l;->a(Lcom/android/car/ui/recyclerview/l;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/l$1;->a:Lcom/android/car/ui/recyclerview/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/ui/recyclerview/l;->a(Lcom/android/car/ui/recyclerview/l;Z)Z

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/l$1;->a:Lcom/android/car/ui/recyclerview/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/ui/recyclerview/l;->a(Lcom/android/car/ui/recyclerview/l;Z)Z

    :goto_0
    return-void
.end method
