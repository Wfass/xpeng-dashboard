.class final Ljf$8;
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
        "Ljava/util/Calendar;",
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

    invoke-virtual {p0, p1}, Ljf$8;->b(Ljg;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Ljf$8;->a(Ljh;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Ljh;Ljava/util/Calendar;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljh;->f()Ljh;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljh;->d()Ljh;

    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljh;->a(Ljava/lang/String;)Ljh;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljh;->a(J)Ljh;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljh;->a(Ljava/lang/String;)Ljh;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljh;->a(J)Ljh;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Ljh;->a(Ljava/lang/String;)Ljh;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljh;->a(J)Ljh;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Ljh;->a(Ljava/lang/String;)Ljh;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljh;->a(J)Ljh;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Ljh;->a(Ljava/lang/String;)Ljh;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljh;->a(J)Ljh;

    const-string v0, "second"

    invoke-virtual {p1, v0}, Ljh;->a(Ljava/lang/String;)Ljh;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljh;->a(J)Ljh;

    invoke-virtual {p1}, Ljh;->e()Ljh;

    return-void
.end method

.method public b(Ljg;)Ljava/util/Calendar;
    .locals 9

    invoke-virtual {p1}, Ljg;->f()Lji;

    move-result-object v0

    sget-object v1, Lji;->O0000Oo0:Lji;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljg;->j()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljg;->c()V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljg;->f()Lji;

    move-result-object v0

    sget-object v1, Lji;->O00000o:Lji;

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Ljg;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljg;->m()I

    move-result v1

    const-string v8, "year"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v1

    goto :goto_0

    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v1

    goto :goto_0

    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljg;->d()V

    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p1
.end method
