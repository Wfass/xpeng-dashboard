.class public abstract Lokio/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileSystem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final Companion:Lokio/FileSystem$Companion;

.field public static final RESOURCES:Lokio/FileSystem;

.field public static final SYSTEM:Lokio/FileSystem;

.field public static final SYSTEM_TEMPORARY_DIRECTORY:Lokio/Path;


# direct methods
.method public static synthetic -write$default(Lokio/FileSystem;Lokio/Path;ZLcas;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p5, :cond_4

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p4, "file"

    .line 79
    invoke-static {p1, p4}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "writerAction"

    invoke-static {p3, p4}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 p1, 0x0

    .line 183
    :try_start_0
    move-object p2, p0

    check-cast p2, Lokio/BufferedSink;

    .line 81
    invoke-interface {p3, p2}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    if-nez p1, :cond_2

    goto :goto_2

    .line 192
    :cond_2
    invoke-static {p1, p0}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    move-object p0, p1

    :goto_2
    if-nez p0, :cond_3

    .line 196
    invoke-static {p2}, Lccf;->a(Ljava/lang/Object;)V

    return-object p2

    .line 195
    :cond_3
    throw p0

    .line 79
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: write"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lokio/FileSystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/FileSystem$Companion;-><init>(Lccc;)V

    sput-object v0, Lokio/FileSystem;->Companion:Lokio/FileSystem$Companion;

    .line 133
    sget-object v0, Lokio/FileSystem;->Companion:Lokio/FileSystem$Companion;

    :try_start_0
    const-string v0, "java.nio.file.Files"

    .line 135
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 136
    new-instance v0, Lokio/NioSystemFileSystem;

    invoke-direct {v0}, Lokio/NioSystemFileSystem;-><init>()V

    check-cast v0, Lokio/JvmSystemFileSystem;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    new-instance v0, Lokio/JvmSystemFileSystem;

    invoke-direct {v0}, Lokio/JvmSystemFileSystem;-><init>()V

    .line 133
    :goto_0
    check-cast v0, Lokio/FileSystem;

    sput-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 143
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getProperty(\"java.io.tmpdir\")"

    invoke-static {v2, v3}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    sput-object v0, Lokio/FileSystem;->SYSTEM_TEMPORARY_DIRECTORY:Lokio/Path;

    .line 154
    new-instance v0, Lokio/internal/ResourceFileSystem;

    const-class v1, Lokio/internal/ResourceFileSystem;

    .line 155
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "ResourceFileSystem::class.java.classLoader"

    invoke-static {v1, v2}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {v0, v1, v4}, Lokio/internal/ResourceFileSystem;-><init>(Ljava/lang/ClassLoader;Z)V

    check-cast v0, Lokio/FileSystem;

    sput-object v0, Lokio/FileSystem;->RESOURCES:Lokio/FileSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic appendingSink$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)Lokio/Sink;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->appendingSink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: appendingSink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createDirectories$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 98
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->createDirectories(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createDirectories"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createDirectory$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->createDirectory(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createDirectory"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic delete$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic deleteRecursively$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 117
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->deleteRecursively(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: deleteRecursively"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic listRecursively$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)Lkotlin/sequences/c;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 45
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->listRecursively(Lokio/Path;Z)Lkotlin/sequences/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: listRecursively"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic openReadWrite$default(Lokio/FileSystem;Lokio/Path;ZZILjava/lang/Object;)Lokio/FileHandle;
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 54
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lokio/FileSystem;->openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openReadWrite"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic sink$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)Lokio/Sink;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final -read(Lokio/Path;Lcas;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Path;",
            "Lcas<",
            "-",
            "Lokio/BufferedSource;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerAction"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 165
    :try_start_0
    move-object v1, p1

    check-cast v1, Lokio/BufferedSource;

    .line 67
    invoke-interface {p2, v1}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    :catch_0
    move-exception p2

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    if-nez p2, :cond_1

    goto :goto_2

    .line 174
    :cond_1
    invoke-static {p2, p1}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    move-object p1, p2

    :goto_2
    if-nez p1, :cond_2

    .line 178
    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    return-object v0

    .line 177
    :cond_2
    throw p1
.end method

.method public final -write(Lokio/Path;ZLcas;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Path;",
            "Z",
            "Lcas<",
            "-",
            "Lokio/BufferedSink;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writerAction"

    invoke-static {p3, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    .line 183
    :try_start_0
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    .line 81
    invoke-interface {p3, v0}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    move-object v1, p3

    move-object p3, p2

    move-object p2, v1

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    if-nez p2, :cond_1

    goto :goto_2

    .line 192
    :cond_1
    invoke-static {p2, p1}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    move-object p1, p2

    :goto_2
    if-nez p1, :cond_2

    .line 196
    invoke-static {p3}, Lccf;->a(Ljava/lang/Object;)V

    return-object p3

    .line 195
    :cond_2
    throw p1
.end method

.method public final appendingSink(Lokio/Path;)Lokio/Sink;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->appendingSink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public abstract appendingSink(Lokio/Path;Z)Lokio/Sink;
.end method

.method public abstract atomicMove(Lokio/Path;Lokio/Path;)V
.end method

.method public abstract canonicalize(Lokio/Path;)Lokio/Path;
.end method

.method public copy(Lokio/Path;Lokio/Path;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p0, p1, p2}, Lokio/internal/_FileSystemKt;->commonCopy(Lokio/FileSystem;Lokio/Path;Lokio/Path;)V

    return-void
.end method

.method public final createDirectories(Lokio/Path;)V
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->createDirectories(Lokio/Path;Z)V

    return-void
.end method

.method public final createDirectories(Lokio/Path;Z)V
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {p0, p1, p2}, Lokio/internal/_FileSystemKt;->commonCreateDirectories(Lokio/FileSystem;Lokio/Path;Z)V

    return-void
.end method

.method public final createDirectory(Lokio/Path;)V
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->createDirectory(Lokio/Path;Z)V

    return-void
.end method

.method public abstract createDirectory(Lokio/Path;Z)V
.end method

.method public abstract createSymlink(Lokio/Path;Lokio/Path;)V
.end method

.method public final delete(Lokio/Path;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    return-void
.end method

.method public abstract delete(Lokio/Path;Z)V
.end method

.method public final deleteRecursively(Lokio/Path;)V
    .locals 1

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->deleteRecursively(Lokio/Path;Z)V

    return-void
.end method

.method public deleteRecursively(Lokio/Path;Z)V
    .locals 1

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static {p0, p1, p2}, Lokio/internal/_FileSystemKt;->commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V

    return-void
.end method

.method public final exists(Lokio/Path;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p0, p1}, Lokio/internal/_FileSystemKt;->commonExists(Lokio/FileSystem;Lokio/Path;)Z

    move-result p1

    return p1
.end method

.method public abstract list(Lokio/Path;)Ljava/util/List;
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
.end method

.method public abstract listOrNull(Lokio/Path;)Ljava/util/List;
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
.end method

.method public final listRecursively(Lokio/Path;)Lkotlin/sequences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Lkotlin/sequences/c<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->listRecursively(Lokio/Path;Z)Lkotlin/sequences/c;

    move-result-object p1

    return-object p1
.end method

.method public listRecursively(Lokio/Path;Z)Lkotlin/sequences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Z)",
            "Lkotlin/sequences/c<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p1, p2}, Lokio/internal/_FileSystemKt;->commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lkotlin/sequences/c;

    move-result-object p1

    return-object p1
.end method

.method public final metadata(Lokio/Path;)Lokio/FileMetadata;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p0, p1}, Lokio/internal/_FileSystemKt;->commonMetadata(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;

    move-result-object p1

    return-object p1
.end method

.method public abstract metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
.end method

.method public abstract openReadOnly(Lokio/Path;)Lokio/FileHandle;
.end method

.method public final openReadWrite(Lokio/Path;)Lokio/FileHandle;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, v0}, Lokio/FileSystem;->openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public abstract openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
.end method

.method public final sink(Lokio/Path;)Lokio/Sink;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public abstract sink(Lokio/Path;Z)Lokio/Sink;
.end method

.method public abstract source(Lokio/Path;)Lokio/Source;
.end method
