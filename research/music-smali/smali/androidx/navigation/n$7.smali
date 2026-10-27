.class Landroidx/navigation/n$7;
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
        "[J>;"
    }
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Landroidx/navigation/n;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 416
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/n$7;->b(Landroid/os/Bundle;Ljava/lang/String;)[J

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 416
    invoke-virtual {p0, p1}, Landroidx/navigation/n$7;->c(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p3, [J

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/n$7;->a(Landroid/os/Bundle;Ljava/lang/String;[J)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;[J)V
    .locals 0

    .line 419
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "long[]"

    return-object v0
.end method

.method public b(Landroid/os/Bundle;Ljava/lang/String;)[J
    .locals 0

    .line 424
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    return-object p1
.end method

.method public c(Ljava/lang/String;)[J
    .locals 1

    .line 430
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Arrays don\'t support default values."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
