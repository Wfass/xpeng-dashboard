.class Lcom/amap/api/services/a/ax$a$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/ax$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic fw:Lcom/amap/api/services/a/ax$a;


# direct methods
.method private constructor <init>(Lcom/amap/api/services/a/ax$a;Ljava/io/OutputStream;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/amap/api/services/a/ax$a$a;->fw:Lcom/amap/api/services/a/ax$a;

    .line 894
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 895
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/ax$a;Ljava/io/OutputStream;Lcom/amap/api/services/a/ax$1;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/ax$a$a;-><init>(Lcom/amap/api/services/a/ax$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ax$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    goto :goto_0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    iget-object v0, p0, Lcom/amap/api/services/a/ax$a$a;->fw:Lcom/amap/api/services/a/ax$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/services/a/ax$a;->b(Lcom/amap/api/services/a/ax$a;Z)Z

    .line 922
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ax$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    iget-object v0, p0, Lcom/amap/api/services/a/ax$a$a;->fw:Lcom/amap/api/services/a/ax$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/services/a/ax$a;->b(Lcom/amap/api/services/a/ax$a;Z)Z

    .line 931
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ax$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    goto :goto_0

    .line 901
    :catch_0
    move-exception p1

    .line 902
    iget-object p1, p0, Lcom/amap/api/services/a/ax$a$a;->fw:Lcom/amap/api/services/a/ax$a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amap/api/services/a/ax$a;->b(Lcom/amap/api/services/a/ax$a;Z)Z

    .line 904
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ax$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    goto :goto_0

    .line 910
    :catch_0
    move-exception p1

    .line 911
    iget-object p1, p0, Lcom/amap/api/services/a/ax$a$a;->fw:Lcom/amap/api/services/a/ax$a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amap/api/services/a/ax$a;->b(Lcom/amap/api/services/a/ax$a;Z)Z

    .line 913
    :goto_0
    return-void
.end method
