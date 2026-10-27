.class Landroidx/navigation/n$5;
.super Landroidx/navigation/n;
.source "NavType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/n<",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Landroidx/navigation/n;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 342
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/n$5;->b(Landroid/os/Bundle;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 342
    invoke-virtual {p0, p1}, Landroidx/navigation/n$5;->c(Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 342
    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/n$5;->a(Landroid/os/Bundle;Ljava/lang/String;[I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;[I)V
    .locals 0

    .line 345
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "integer[]"

    return-object v0
.end method

.method public b(Landroid/os/Bundle;Ljava/lang/String;)[I
    .locals 0

    .line 350
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public c(Ljava/lang/String;)[I
    .locals 1

    .line 356
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Arrays don\'t support default values."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
