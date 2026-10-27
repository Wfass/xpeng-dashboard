.class final Lcom/amap/api/services/a/ax$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private d:Z

.field private f:J

.field private fA:Lcom/amap/api/services/a/ax$a;

.field final synthetic ft:Lcom/amap/api/services/a/ax;

.field private final fz:[J


# direct methods
.method private constructor <init>(Lcom/amap/api/services/a/ax;Ljava/lang/String;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/amap/api/services/a/ax$c;->ft:Lcom/amap/api/services/a/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput-object p2, p0, Lcom/amap/api/services/a/ax$c;->b:Ljava/lang/String;

    .line 955
    invoke-static {p1}, Lcom/amap/api/services/a/ax;->e(Lcom/amap/api/services/a/ax;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/amap/api/services/a/ax$c;->fz:[J

    .line 956
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/ax;Ljava/lang/String;Lcom/amap/api/services/a/ax$1;)V
    .locals 0

    .line 935
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/ax$c;-><init>(Lcom/amap/api/services/a/ax;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ax$c;J)J
    .locals 0

    .line 935
    iput-wide p1, p0, Lcom/amap/api/services/a/ax$c;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/amap/api/services/a/ax$c;)Lcom/amap/api/services/a/ax$a;
    .locals 0

    .line 935
    iget-object p0, p0, Lcom/amap/api/services/a/ax$c;->fA:Lcom/amap/api/services/a/ax$a;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/services/a/ax$c;Lcom/amap/api/services/a/ax$a;)Lcom/amap/api/services/a/ax$a;
    .locals 0

    .line 935
    iput-object p1, p0, Lcom/amap/api/services/a/ax$c;->fA:Lcom/amap/api/services/a/ax$a;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/services/a/ax$c;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ax$c;->c([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ax$c;Z)Z
    .locals 0

    .line 935
    iput-boolean p1, p0, Lcom/amap/api/services/a/ax$c;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/services/a/ax$c;)[J
    .locals 0

    .line 935
    iget-object p0, p0, Lcom/amap/api/services/a/ax$c;->fz:[J

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/services/a/ax$c;)Ljava/lang/String;
    .locals 0

    .line 935
    iget-object p0, p0, Lcom/amap/api/services/a/ax$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method private c([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    array-length v0, p1

    iget-object v1, p0, Lcom/amap/api/services/a/ax$c;->ft:Lcom/amap/api/services/a/ax;

    invoke-static {v1}, Lcom/amap/api/services/a/ax;->e(Lcom/amap/api/services/a/ax;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 973
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/amap/api/services/a/ax$c;->fz:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_0
    nop

    .line 979
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 977
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ax$c;->d([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 969
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ax$c;->d([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private d([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/ax$c;)Z
    .locals 0

    .line 935
    iget-boolean p0, p0, Lcom/amap/api/services/a/ax$c;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/services/a/ax$c;)J
    .locals 2

    .line 935
    iget-wide v0, p0, Lcom/amap/api/services/a/ax$c;->f:J

    return-wide v0
.end method


# virtual methods
.method public L(I)Ljava/io/File;
    .locals 4

    .line 987
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/ax$c;->ft:Lcom/amap/api/services/a/ax;

    invoke-static {v1}, Lcom/amap/api/services/a/ax;->f(Lcom/amap/api/services/a/ax;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/services/a/ax$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public M(I)Ljava/io/File;
    .locals 4

    .line 991
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/ax$c;->ft:Lcom/amap/api/services/a/ax;

    invoke-static {v1}, Lcom/amap/api/services/a/ax;->f(Lcom/amap/api/services/a/ax;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/services/a/ax$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    iget-object v1, p0, Lcom/amap/api/services/a/ax$c;->fz:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    .line 961
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 960
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 963
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
