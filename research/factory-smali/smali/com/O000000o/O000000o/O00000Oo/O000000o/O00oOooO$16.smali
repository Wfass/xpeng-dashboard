.class final Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$16;
.super Lcom/O000000o/O000000o/O000o000;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/O000o000<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final O000000o:Ljava/lang/String; = "year"

.field private static final O00000Oo:Ljava/lang/String; = "month"

.field private static final O00000o:Ljava/lang/String; = "hourOfDay"

.field private static final O00000o0:Ljava/lang/String; = "dayOfMonth"

.field private static final O00000oO:Ljava/lang/String; = "minute"

.field private static final O00000oo:Ljava/lang/String; = "second"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/util/Calendar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v0

    sget-object v1, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo0:Lcom/O000000o/O000000o/O00000o/O00000o0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o0()V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v0

    sget-object v1, Lcom/O000000o/O000000o/O00000o/O00000o0;->O00000o:Lcom/O000000o/O000000o/O00000o/O00000o0;

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000O0o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o00()I

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
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o()V

    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p1
.end method

.method public bridge synthetic O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$16;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/util/Calendar;)V

    return-void
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o()Lcom/O000000o/O000000o/O00000o/O00000o;

    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(J)Lcom/O000000o/O000000o/O00000o/O00000o;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(J)Lcom/O000000o/O000000o/O00000o/O00000o;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(J)Lcom/O000000o/O000000o/O00000o/O00000o;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(J)Lcom/O000000o/O000000o/O00000o/O00000o;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(J)Lcom/O000000o/O000000o/O00000o/O00000o;

    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(J)Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oO()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void
.end method

.method public synthetic O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$16;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method
