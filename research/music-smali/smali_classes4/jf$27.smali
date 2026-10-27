.class final Ljf$27;
.super Lcom/O000000o/O000000o/q;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/q<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/q;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljg;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljf$27;->b(Ljg;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljf$27;->a(Ljh;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljh;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljh;->b(Ljava/lang/String;)Ljh;

    return-void
.end method

.method public b(Ljg;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljg;->f()Lji;

    move-result-object v0

    sget-object v1, Lji;->O0000Oo0:Lji;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljg;->j()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Lji;->O0000OOo:Lji;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljg;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljg;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
