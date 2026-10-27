.class public final Lcom/O000000o/O000000o/O00000Oo/O0000o0;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/O000000o/O000000o/O00000Oo/O0000o0$O000000o;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O0o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/O000000o/O000000o/O00000o/O0000O0o; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000OOoO:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v1, p0}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/O000000o/O000000o/O00oOooO;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/O000000o/O000000o/O00000o/O0000O0o; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/O000000o/O000000o/O000O00o;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget-object p0, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    return-object p0

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static O000000o(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000o0$O000000o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/O000000o/O000000o/O00000Oo/O0000o0$O000000o;-><init>(Ljava/lang/Appendable;Lcom/O000000o/O000000o/O00000Oo/O0000o0$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static O000000o(Lcom/O000000o/O000000o/O00oOooO;Lcom/O000000o/O000000o/O00000o/O00000o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000OOoO:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, p1, p0}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    return-void
.end method
