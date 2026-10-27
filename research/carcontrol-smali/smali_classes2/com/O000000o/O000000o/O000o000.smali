.class public abstract Lcom/O000000o/O000000o/O000o000;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final O000000o()Lcom/O000000o/O000000o/O000o000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O000o000$1;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/O000o000$1;-><init>(Lcom/O000000o/O000000o/O000o000;)V

    return-object v0
.end method

.method public final O000000o(Lcom/O000000o/O000000o/O00oOooO;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00oOooO;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000o;-><init>(Lcom/O000000o/O000000o/O00oOooO;)V

    invoke-virtual {p0, v0}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/O000000o/O000000o/O000O00o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final O000000o(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O00000o/O000000o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000o/O000000o;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final O000000o(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/O000000o/O000000o/O000o000;->O000000o(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final O000000o(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/O000000o/O000000o/O000o000;->O000000o(Ljava/io/Writer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O00000o;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final O000000o(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000o/O00000o;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0, p2}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    return-void
.end method

.method public final O00000Oo(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/O000000o/O000000o/O00oOooO;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o()Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/O000000o/O000000o/O000O00o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O000000o;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
