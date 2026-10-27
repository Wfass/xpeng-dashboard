.class public final Lcom/O000000o/O000000o/O000OO00;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O00o;,
            Lcom/O000000o/O000000o/O000OOo;
        }
    .end annotation

    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0o()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Z)V

    :try_start_0
    invoke-static {p1}, Lcom/O000000o/O000000o/O00000Oo/O0000o0;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Lcom/O000000o/O000000o/O000O0o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/O000000o/O000000o/O000O0o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Lcom/O000000o/O000000o/O000O0o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/O000000o/O000000o/O000O0o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Z)V

    throw v0
.end method

.method public O000000o(Ljava/io/Reader;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O00o;,
            Lcom/O000000o/O000000o/O000OOo;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/O000000o/O000000o/O00000o/O000000o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000o/O000000o;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/O000000o/O000000o/O000OO00;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00oOooO;->O0000oO()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v0

    sget-object v1, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo:Lcom/O000000o/O000000o/O00000o/O00000o0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/O000000o/O000000o/O000OOo;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p1, v0}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/O000000o/O000000o/O00000o/O0000O0o; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/O000000o/O000000o/O000O00o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000OOo;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/O000000o/O000000o/O000OO00;->O000000o(Ljava/io/Reader;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p1

    return-object p1
.end method
