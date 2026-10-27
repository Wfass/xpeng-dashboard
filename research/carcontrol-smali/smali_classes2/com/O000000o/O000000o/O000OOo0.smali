.class public final Lcom/O000000o/O000000o/O000OOo0;
.super Ljava/lang/Object;
.source "JsonStreamParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/O000000o/O000000o/O00oOooO;",
        ">;"
    }
.end annotation


# instance fields
.field private final O000000o:Lcom/O000000o/O000000o/O00000o/O000000o;

.field private final O00000Oo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/O000000o/O000000o/O00000o/O000000o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000o/O000000o;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O000OOo0;->O000000o:Lcom/O000000o/O000000o/O00000o/O000000o;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Z)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/O000000o/O000000o/O000OOo0;->O00000Oo:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O000OOo0;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public O000000o()Lcom/O000000o/O000000o/O00oOooO;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O0o;
        }
    .end annotation

    const-string v0, "Failed parsing JSON source to Json"

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O000OOo0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/O000000o/O000000o/O000OOo0;->O000000o:Lcom/O000000o/O000000o/O00000o/O000000o;

    invoke-static {v1}, Lcom/O000000o/O000000o/O00000Oo/O0000o0;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/O000000o/O000000o/O000O0o; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O000O0o;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_0
    throw v0

    :catch_1
    move-exception v1

    new-instance v2, Lcom/O000000o/O000000o/O000O0o;

    invoke-direct {v2, v0, v1}, Lcom/O000000o/O000000o/O000O0o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    new-instance v2, Lcom/O000000o/O000000o/O000O0o;

    invoke-direct {v2, v0, v1}, Lcom/O000000o/O000000o/O000O0o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lcom/O000000o/O000000o/O000OOo0;->O00000Oo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/O000000o/O000000o/O000OOo0;->O000000o:Lcom/O000000o/O000000o/O00000o/O000000o;

    invoke-virtual {v1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v1

    sget-object v2, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo:Lcom/O000000o/O000000o/O00000o/O00000o0;
    :try_end_0
    .catch Lcom/O000000o/O000000o/O00000o/O0000O0o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/O000000o/O000000o/O000O00o;

    invoke-direct {v2, v1}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v2, v1}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O000OOo0;->O000000o()Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
