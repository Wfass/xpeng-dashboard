.class public Lcdo;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:[B


# instance fields
.field private b:Ljava/io/RandomAccessFile;

.field private final c:Lcdf;

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 82
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcdo;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcdo;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 133
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iput-object v2, p0, Lcdo;->b:Ljava/io/RandomAccessFile;

    .line 136
    iget-object v0, p0, Lcdo;->d:[B

    if-eqz v0, :cond_0

    .line 137
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    :cond_0
    iput-object v2, p0, Lcdo;->d:[B

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 135
    iput-object v2, p0, Lcdo;->b:Ljava/io/RandomAccessFile;

    .line 136
    iget-object v3, p0, Lcdo;->d:[B

    if-eqz v3, :cond_1

    .line 137
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    :cond_1
    iput-object v2, p0, Lcdo;->d:[B

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1012
    iget-object v0, p0, Lcdo;->c:Lcdf;

    invoke-virtual {v0}, Lcdf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
