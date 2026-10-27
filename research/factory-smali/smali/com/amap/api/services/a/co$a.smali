.class public final Lcom/amap/api/services/a/co$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/co$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/co;

.field private final b:Lcom/amap/api/services/a/co$c;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/services/a/co;Lcom/amap/api/services/a/co$c;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/amap/api/services/a/co$a;->a:Lcom/amap/api/services/a/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p2, p0, Lcom/amap/api/services/a/co$a;->b:Lcom/amap/api/services/a/co$c;

    .line 773
    invoke-static {p2}, Lcom/amap/api/services/a/co$c;->d(Lcom/amap/api/services/a/co$c;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/amap/api/services/a/co;->e(Lcom/amap/api/services/a/co;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/amap/api/services/a/co$a;->c:[Z

    .line 774
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/co;Lcom/amap/api/services/a/co$c;Lcom/amap/api/services/a/co$1;)V
    .locals 0

    .line 765
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/co$a;-><init>(Lcom/amap/api/services/a/co;Lcom/amap/api/services/a/co$c;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/co$a;)Lcom/amap/api/services/a/co$c;
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/amap/api/services/a/co$a;->b:Lcom/amap/api/services/a/co$c;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/services/a/co$a;Z)Z
    .locals 0

    .line 765
    iput-boolean p1, p0, Lcom/amap/api/services/a/co$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/services/a/co$a;)[Z
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/amap/api/services/a/co$a;->c:[Z

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/a/co$a;->a:Lcom/amap/api/services/a/co;

    invoke-static {v0}, Lcom/amap/api/services/a/co;->e(Lcom/amap/api/services/a/co;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/amap/api/services/a/co$a;->a:Lcom/amap/api/services/a/co;

    monitor-enter v0

    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/co$a;->b:Lcom/amap/api/services/a/co$c;

    invoke-static {v1}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;)Lcom/amap/api/services/a/co$a;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 825
    iget-object v1, p0, Lcom/amap/api/services/a/co$a;->b:Lcom/amap/api/services/a/co$c;

    invoke-static {v1}, Lcom/amap/api/services/a/co$c;->d(Lcom/amap/api/services/a/co$c;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/amap/api/services/a/co$a;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/amap/api/services/a/co$a;->b:Lcom/amap/api/services/a/co$c;

    invoke-virtual {v1, p1}, Lcom/amap/api/services/a/co$c;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    goto :goto_0

    .line 832
    :catch_0
    move-exception v1

    .line 834
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/services/a/co$a;->a:Lcom/amap/api/services/a/co;

    invoke-static {v1}, Lcom/amap/api/services/a/co;->f(Lcom/amap/api/services/a/co;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 839
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 843
    nop

    .line 845
    :goto_0
    :try_start_4
    new-instance p1, Lcom/amap/api/services/a/co$a$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/amap/api/services/a/co$a$a;-><init>(Lcom/amap/api/services/a/co$a;Ljava/io/OutputStream;Lcom/amap/api/services/a/co$1;)V

    monitor-exit v0

    return-object p1

    .line 840
    :catch_1
    move-exception p1

    .line 842
    invoke-static {}, Lcom/amap/api/services/a/co;->d()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 823
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 846
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 814
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "be greater than 0 and less than the maximum value count "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/api/services/a/co$a;->a:Lcom/amap/api/services/a/co;

    .line 819
    invoke-static {p1}, Lcom/amap/api/services/a/co;->e(Lcom/amap/api/services/a/co;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    iget-boolean v0, p0, Lcom/amap/api/services/a/co$a;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/amap/api/services/a/co$a;->a:Lcom/amap/api/services/a/co;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/amap/api/services/a/co;->a(Lcom/amap/api/services/a/co;Lcom/amap/api/services/a/co$a;Z)V

    .line 868
    iget-object v0, p0, Lcom/amap/api/services/a/co$a;->a:Lcom/amap/api/services/a/co;

    iget-object v2, p0, Lcom/amap/api/services/a/co$a;->b:Lcom/amap/api/services/a/co$c;

    invoke-static {v2}, Lcom/amap/api/services/a/co$c;->c(Lcom/amap/api/services/a/co$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/co;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/co$a;->a:Lcom/amap/api/services/a/co;

    invoke-static {v0, p0, v1}, Lcom/amap/api/services/a/co;->a(Lcom/amap/api/services/a/co;Lcom/amap/api/services/a/co$a;Z)V

    .line 872
    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/services/a/co$a;->e:Z

    .line 873
    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 880
    iget-object v0, p0, Lcom/amap/api/services/a/co$a;->a:Lcom/amap/api/services/a/co;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/amap/api/services/a/co;->a(Lcom/amap/api/services/a/co;Lcom/amap/api/services/a/co$a;Z)V

    .line 881
    return-void
.end method
