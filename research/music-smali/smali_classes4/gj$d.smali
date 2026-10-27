.class Lgj$d;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method public static a(Landroid/view/View;)Lgr;
    .locals 1

    .line 4836
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4839
    :cond_0
    invoke-static {v0}, Lgr;->a(Landroid/view/WindowInsets;)Lgr;

    move-result-object v0

    .line 4842
    invoke-virtual {v0, v0}, Lgr;->a(Lgr;)V

    .line 4843
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgr;->a(Landroid/view/View;)V

    return-object v0
.end method
