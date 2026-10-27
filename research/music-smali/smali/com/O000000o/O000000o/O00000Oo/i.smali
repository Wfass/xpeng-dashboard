.class public final Lcom/O000000o/O000000o/O00000Oo/i;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/O000000o/O000000o/O00000Oo/i$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/O000000o/O000000o/O00000Oo/i$a;-><init>(Ljava/lang/Appendable;Lcom/O000000o/O000000o/O00000Oo/i$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/O000000o/O000000o/r;Ljh;)V
    .locals 1

    sget-object v0, Ljf;->P:Lcom/O000000o/O000000o/q;

    invoke-virtual {v0, p1, p0}, Lcom/O000000o/O000000o/q;->a(Ljh;Ljava/lang/Object;)V

    return-void
.end method
