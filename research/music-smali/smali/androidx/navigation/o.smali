.class public final Landroidx/navigation/o;
.super Ljava/lang/Object;
.source "Navigation.java"


# direct methods
.method public static a(Landroid/view/View;)Landroidx/navigation/e;
    .locals 3

    .line 82
    invoke-static {p0}, Landroidx/navigation/o;->b(Landroid/view/View;)Landroidx/navigation/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a NavController set"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/view/View;Landroidx/navigation/e;)V
    .locals 1

    .line 154
    sget v0, Landroidx/navigation/r$a;->nav_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private static b(Landroid/view/View;)Landroidx/navigation/e;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 165
    invoke-static {p0}, Landroidx/navigation/o;->c(Landroid/view/View;)Landroidx/navigation/e;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 170
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static c(Landroid/view/View;)Landroidx/navigation/e;
    .locals 1

    .line 178
    sget v0, Landroidx/navigation/r$a;->nav_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 180
    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 181
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/e;

    goto :goto_0

    .line 182
    :cond_0
    instance-of v0, p0, Landroidx/navigation/e;

    if-eqz v0, :cond_1

    .line 183
    check-cast p0, Landroidx/navigation/e;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
