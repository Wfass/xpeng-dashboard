.class Landroidx/navigation/n$8;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 447
    invoke-direct {p0, p1}, Landroidx/navigation/n;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 447
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/n$8;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 447
    invoke-virtual {p0, p1}, Landroidx/navigation/n$8;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 450
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public bridge synthetic a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 447
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/n$8;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    .line 455
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "float"

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    .line 461
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
