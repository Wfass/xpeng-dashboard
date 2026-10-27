.class public Landroidx/navigation/j;
.super Landroidx/navigation/p;
.source "NavGraphNavigator.java"


# annotations
.annotation runtime Landroidx/navigation/p$b;
    a = "navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/p<",
        "Landroidx/navigation/NavGraph;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/navigation/q;


# direct methods
.method public constructor <init>(Landroidx/navigation/q;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/navigation/p;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/navigation/j;->a:Landroidx/navigation/q;

    return-void
.end method


# virtual methods
.method public a()Landroidx/navigation/NavGraph;
    .locals 1

    .line 50
    new-instance v0, Landroidx/navigation/NavGraph;

    invoke-direct {v0, p0}, Landroidx/navigation/NavGraph;-><init>(Landroidx/navigation/p;)V

    return-object v0
.end method

.method public a(Landroidx/navigation/NavGraph;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)Landroidx/navigation/i;
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavGraph;->findNode(IZ)Landroidx/navigation/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p0, Landroidx/navigation/j;->a:Landroidx/navigation/q;

    .line 70
    invoke-virtual {v0}, Landroidx/navigation/i;->getNavigatorName()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Landroidx/navigation/q;->a(Ljava/lang/String;)Landroidx/navigation/p;

    move-result-object p1

    .line 71
    invoke-virtual {v0, p2}, Landroidx/navigation/i;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3, p4}, Landroidx/navigation/p;->a(Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)Landroidx/navigation/i;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->getStartDestDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "navigation destination "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of this NavGraph"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 59
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "no start destination defined via app:startDestination for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic a(Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)Landroidx/navigation/i;
    .locals 0

    .line 28
    check-cast p1, Landroidx/navigation/NavGraph;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/j;->a(Landroidx/navigation/NavGraph;Landroid/os/Bundle;Landroidx/navigation/m;Landroidx/navigation/p$a;)Landroidx/navigation/i;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic d()Landroidx/navigation/i;
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroidx/navigation/j;->a()Landroidx/navigation/NavGraph;

    move-result-object v0

    return-object v0
.end method
