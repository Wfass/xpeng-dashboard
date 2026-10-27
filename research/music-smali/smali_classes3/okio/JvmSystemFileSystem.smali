.class public Lokio/JvmSystemFileSystem;
.super Lokio/FileSystem;
.source "JvmSystemFileSystem.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    return-void
.end method

.method private final list(Lokio/Path;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Z)",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/FileNotFoundException;

    const-string v0, "no such file: "

    invoke-static {v0, p1}, Lccf;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 71
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v0, "failed to list "

    invoke-static {v0, p1}, Lccf;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    .line 151
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, v1, v2

    const-string v4, "it"

    .line 76
    invoke-static {v3, v4}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    check-cast p2, Ljava/util/List;

    .line 77
    invoke-static {p2}, Lkotlin/collections/l;->d(Ljava/util/List;)V

    return-object p2
.end method

.method private final requireCreate(Lokio/Path;)V
    .locals 2

    .line 147
    invoke-virtual {p0, p1}, Lokio/JvmSystemFileSystem;->exists(Lokio/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final requireExist(Lokio/Path;)V
    .locals 2

    .line 143
    invoke-virtual {p0, p1}, Lokio/JvmSystemFileSystem;->exists(Lokio/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lokio/JvmSystemFileSystem;->requireExist(Lokio/Path;)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lokio/Okio;->sink(Ljava/io/File;Z)Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v1, "canonicalFile"

    invoke-static {p1, v1}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "no such file"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createDirectory(Lokio/Path;Z)V
    .locals 3

    const-string v0, "dir"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_4

    .line 110
    invoke-virtual {p0, p1}, Lokio/JvmSystemFileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokio/FileMetadata;->isDirectory()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    if-nez p2, :cond_2

    return-void

    .line 112
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 115
    :cond_3
    new-instance p2, Ljava/io/IOException;

    const-string v0, "failed to create directory: "

    invoke-static {v0, p1}, Lccf;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    return-void
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unsupported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Lokio/Path;Z)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance p2, Ljava/io/FileNotFoundException;

    const-string v0, "no such file: "

    invoke-static {v0, p1}, Lccf;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 129
    :cond_1
    new-instance p2, Ljava/io/IOException;

    const-string v0, "failed to delete "

    invoke-static {v0, p1}, Lccf;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p1, v0}, Lokio/JvmSystemFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lccf;->a(Ljava/lang/Object;)V

    return-object p1
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lokio/JvmSystemFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 13

    const-string v0, "path"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    cmp-long v0, v5, v7

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    new-instance p1, Lokio/FileMetadata;

    const/4 v7, 0x0

    .line 54
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v0, p1

    move-object v3, v7

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move-object v10, v12

    .line 50
    invoke-direct/range {v0 .. v10}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILccc;)V

    return-object p1
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lokio/JvmFileHandle;

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p1

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1}, Lokio/JvmFileHandle;-><init>(ZLjava/io/RandomAccessFile;)V

    check-cast v0, Lokio/FileHandle;

    return-object v0
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p2, :cond_2

    .line 89
    invoke-direct {p0, p1}, Lokio/JvmSystemFileSystem;->requireCreate(Lokio/Path;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 90
    invoke-direct {p0, p1}, Lokio/JvmSystemFileSystem;->requireExist(Lokio/Path;)V

    .line 91
    :cond_3
    new-instance p2, Lokio/JvmFileHandle;

    new-instance p3, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p1

    const-string v1, "rw"

    invoke-direct {p3, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, v0, p3}, Lokio/JvmFileHandle;-><init>(ZLjava/io/RandomAccessFile;)V

    check-cast p2, Lokio/FileHandle;

    return-object p2

    .line 86
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot require mustCreate and mustExist at the same time."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lokio/JvmSystemFileSystem;->requireCreate(Lokio/Path;)V

    .line 100
    :cond_0
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JvmSystemFileSystem"

    return-object v0
.end method
