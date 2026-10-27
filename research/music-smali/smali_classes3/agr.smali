.class final Lagr;
.super Lahp;
.source "ObjectWriterImplInt8ValueArray.java"


# static fields
.field static final a:Lagr;

.field static final b:[B

.field static final c:J


# instance fields
.field private final d:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lagr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lagr;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lagr;->a:Lagr;

    const-string v0, "[B"

    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lagr;->b:[B

    .line 21
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lagr;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[B>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lahp;-><init>()V

    .line 26
    iput-object p1, p0, Lagr;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 31
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 32
    const-class p3, [B

    if-ne p2, p3, :cond_0

    .line 33
    sget-object p3, Lagr;->b:[B

    sget-wide p4, Lagr;->c:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->c(Ljava/lang/String;)V

    .line 40
    :cond_1
    :goto_0
    iget-object p3, p0, Lagr;->d:Ljava/util/function/Function;

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 41
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    goto :goto_1

    .line 43
    :cond_2
    check-cast p2, [B

    .line 46
    :goto_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a([B)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 4

    if-nez p2, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 57
    :cond_0
    iget-object p3, p0, Lagr;->d:Ljava/util/function/Function;

    if-eqz p3, :cond_1

    .line 58
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    goto :goto_0

    .line 60
    :cond_1
    check-cast p2, [B

    .line 63
    :goto_0
    iget-object p3, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab$a;->c()Ljava/lang/String;

    move-result-object p3

    const-string p4, "millis"

    .line 64
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    const-string p4, "gzip"

    .line 68
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v1, "gzip,base64"

    if-nez p4, :cond_3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 71
    :cond_3
    :try_start_0
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    array-length v2, p2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_4

    .line 73
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    array-length v3, p2

    invoke-direct {v2, p4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    goto :goto_1

    .line 75
    :cond_4
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, p4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_1
    move-object v0, v2

    .line 77
    invoke-virtual {v0, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 78
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 79
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {v0}, Labe;->a(Ljava/io/Closeable;)V

    :cond_5
    const-string p4, "base64"

    .line 87
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 88
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 89
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide p3

    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p3, p5

    const-wide/16 p5, 0x0

    cmp-long p3, p3, p5

    if-eqz p3, :cond_6

    goto :goto_3

    .line 95
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 p3, 0x0

    .line 96
    :goto_2
    array-length p4, p2

    if-ge p3, p4, :cond_8

    if-eqz p3, :cond_7

    .line 98
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 100
    :cond_7
    aget-byte p4, p2, p3

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->d(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 102
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void

    .line 91
    :cond_9
    :goto_3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b([B)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 81
    :try_start_1
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "write gzipBytes error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_4
    invoke-static {v0}, Labe;->a(Ljava/io/Closeable;)V

    .line 84
    throw p1
.end method
