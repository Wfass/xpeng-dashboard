.class final Ljf$24;
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
        "Ljava/lang/Number;",
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

    invoke-virtual {p0, p1}, Ljf$24;->b(Ljg;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljh;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljh;->a(Ljava/lang/Number;)Ljh;

    return-void
.end method

.method public bridge synthetic a(Ljh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Ljf$24;->a(Ljh;Ljava/lang/Number;)V

    return-void
.end method

.method public b(Ljg;)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p1}, Ljg;->f()Lji;

    move-result-object v0

    sget-object v1, Lji;->O0000Oo0:Lji;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljg;->j()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljg;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/O000000o/O000000o/n;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/n;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
