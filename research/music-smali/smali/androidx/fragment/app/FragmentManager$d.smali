.class Landroidx/fragment/app/FragmentManager$d;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/j;

.field private final b:Landroidx/fragment/app/m;

.field private final c:Landroidx/lifecycle/l;


# direct methods
.method constructor <init>(Landroidx/lifecycle/j;Landroidx/fragment/app/m;Landroidx/lifecycle/l;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$d;->a:Landroidx/lifecycle/j;

    .line 246
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$d;->b:Landroidx/fragment/app/m;

    .line 247
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$d;->c:Landroidx/lifecycle/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 260
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$d;->a:Landroidx/lifecycle/j;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$d;->c:Landroidx/lifecycle/l;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$d;->b:Landroidx/fragment/app/m;

    invoke-interface {v0, p1, p2}, Landroidx/fragment/app/m;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/j$b;)Z
    .locals 1

    .line 251
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$d;->a:Landroidx/lifecycle/j;

    invoke-virtual {v0}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/j$b;->a(Landroidx/lifecycle/j$b;)Z

    move-result p1

    return p1
.end method
