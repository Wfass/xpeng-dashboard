.class public Lnet/lingala/zip4j/d/c;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final apM:[B

.field public static final apN:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lnet/lingala/zip4j/d/c;->apM:[B

    .line 46
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lnet/lingala/zip4j/d/c;->apN:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x5ct
        -0x7ft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x13t
        0x41t
    .end array-data
.end method

.method private static a(ZBI)B
    .locals 0

    .line 564
    if-eqz p0, :cond_0

    .line 565
    invoke-static {p1, p2}, Lnet/lingala/zip4j/d/a;->b(BI)B

    move-result p1

    .line 568
    :cond_0
    return p1
.end method

.method public static a(Ljava/io/File;ZZLnet/lingala/zip4j/model/g;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZZ",
            "Lnet/lingala/zip4j/model/g;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 103
    if-eqz p0, :cond_7

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_6

    if-nez v1, :cond_0

    goto :goto_2

    .line 114
    :cond_0
    array-length p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_5

    aget-object v3, v1, v2

    .line 115
    if-eqz p3, :cond_1

    invoke-interface {p3, v3}, Lnet/lingala/zip4j/model/g;->i(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    if-nez p2, :cond_3

    .line 122
    goto :goto_1

    .line 124
    :cond_2
    if-nez p1, :cond_3

    .line 125
    goto :goto_1

    .line 128
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 130
    invoke-static {v3, p1, p2, p3}, Lnet/lingala/zip4j/d/c;->a(Ljava/io/File;ZZLnet/lingala/zip4j/model/g;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_5
    return-object v0

    .line 111
    :cond_6
    :goto_2
    return-object v0

    .line 104
    :cond_7
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "input path is null, cannot read files in the directory"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 350
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 351
    invoke-static {v0}, Lnet/lingala/zip4j/d/c;->o(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    sget-object v1, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->aoB:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->aoA:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 355
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    :cond_0
    invoke-static {v0}, Lnet/lingala/zip4j/d/c;->r(Ljava/io/File;)V

    goto :goto_1

    .line 359
    :cond_1
    invoke-static {v0}, Lnet/lingala/zip4j/d/c;->q(Ljava/io/File;)V

    .line 361
    :cond_2
    :goto_1
    goto :goto_0

    .line 362
    :cond_3
    return-void
.end method

.method private static a(Ljava/nio/file/Path;)[B
    .locals 7

    .line 502
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 505
    :try_start_0
    const-class v2, Ljava/nio/file/attribute/DosFileAttributeView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v2, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p0

    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 507
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object p0

    .line 509
    nop

    .line 511
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v2

    invoke-static {v2, v6, v6}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result v2

    .line 512
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    move-result v4

    invoke-static {v4, v2, v3}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result v2

    .line 513
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result v2

    .line 514
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isDirectory()Z

    move-result v3

    invoke-static {v3, v2, v0}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result v0

    .line 515
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    move-result p0

    const/4 v2, 0x5

    invoke-static {p0, v0, v2}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    .line 516
    aput-byte p0, v1, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    goto :goto_0

    .line 517
    :catch_0
    move-exception p0

    .line 521
    :goto_0
    return-object v1
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-static {p1}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    return-object p1

    .line 290
    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/d/c;->o(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/nio/file/LinkOption;

    const/4 v0, 0x0

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v1, p1, v0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 294
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 304
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    cmp-long v2, p2, p4

    if-gtz v2, :cond_6

    .line 308
    if-nez v2, :cond_0

    .line 309
    return-void

    .line 313
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 317
    nop

    .line 318
    sub-long/2addr p4, p2

    .line 320
    int-to-long p2, p7

    cmp-long p2, p4, p2

    if-gez p2, :cond_1

    .line 321
    long-to-int p2, p4

    new-array p2, p2, [B

    goto :goto_0

    .line 323
    :cond_1
    new-array p2, p7, [B

    .line 326
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p3

    const/4 p7, -0x1

    if-eq p3, p7, :cond_5

    .line 327
    const/4 p7, 0x0

    invoke-virtual {p1, p2, p7, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 329
    int-to-long v2, p3

    invoke-virtual {p6, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->J(J)V

    .line 330
    invoke-virtual {p6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->ub()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 331
    sget-object p0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->apr:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {p6, p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V

    .line 332
    return-void

    .line 335
    :cond_3
    add-long/2addr v0, v2

    .line 337
    cmp-long p3, v0, p4

    if-nez p3, :cond_4

    .line 338
    goto :goto_1

    .line 339
    :cond_4
    array-length p3, p2

    int-to-long v2, p3

    add-long/2addr v2, v0

    cmp-long p3, v2, p4

    if-lez p3, :cond_2

    .line 340
    sub-long p2, p4, v0

    long-to-int p2, p2

    new-array p2, p2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :cond_5
    :goto_1
    nop

    .line 347
    return-void

    .line 344
    :catch_0
    move-exception p0

    .line 345
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 305
    :cond_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "invalid offsets"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/nio/file/Path;)[B
    .locals 11

    .line 537
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 540
    :try_start_0
    const-class v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v2, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 542
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v2

    .line 544
    new-array v4, v6, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v4}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    const/4 v8, 0x7

    invoke-static {v4, v7, v8}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result v4

    aput-byte v4, v1, v5

    .line 545
    new-array v4, v6, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v4}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    aget-byte v7, v1, v5

    const/4 v9, 0x6

    invoke-static {v4, v7, v9}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result v4

    aput-byte v4, v1, v5

    .line 546
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result p0

    aget-byte v4, v1, v5

    const/4 v7, 0x5

    invoke-static {p0, v4, v7}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v5

    .line 547
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v4, v1, v5

    invoke-static {p0, v4, v6}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v5

    .line 548
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x2

    aget-byte v10, v1, v4

    invoke-static {p0, v10, v8}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    .line 549
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v8, v1, v4

    invoke-static {p0, v8, v9}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    .line 550
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v8, v1, v4

    invoke-static {p0, v8, v7}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    .line 551
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v7, v1, v4

    invoke-static {p0, v7, v0}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    .line 552
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v0, v1, v4

    invoke-static {p0, v0, v5}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    .line 553
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v0, v1, v4

    invoke-static {p0, v0, v4}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    .line 554
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v0, v1, v4

    invoke-static {p0, v0, v3}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    .line 555
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v0, v1, v4

    invoke-static {p0, v0, v6}, Lnet/lingala/zip4j/d/c;->a(ZBI)B

    move-result p0

    aput-byte p0, v1, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 556
    :catch_0
    move-exception p0

    .line 560
    :goto_0
    return-object v1
.end method

.method public static bC(Z)[B
    .locals 4

    .line 423
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 424
    invoke-static {}, Lnet/lingala/zip4j/d/c;->ui()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {}, Lnet/lingala/zip4j/d/c;->uh()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {}, Lnet/lingala/zip4j/d/c;->ug()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    .line 431
    aget-byte p0, v1, v3

    invoke-static {p0, v0}, Lnet/lingala/zip4j/d/a;->b(BI)B

    move-result p0

    aput-byte p0, v1, v3

    goto :goto_1

    .line 425
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 426
    sget-object p0, Lnet/lingala/zip4j/d/c;->apN:[B

    array-length v0, v1

    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 428
    :cond_2
    sget-object p0, Lnet/lingala/zip4j/d/c;->apM:[B

    array-length v0, v1

    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static c(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tN()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 216
    sget-object v2, Lnet/lingala/zip4j/d/d;->apP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/lingala/zip4j/d/d;->apP:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/d/c;->o(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    :goto_0
    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    const-string v0, "\\\\"

    const-string v2, "/"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 239
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "\\\\"

    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/lingala/zip4j/d/c;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_1
    nop

    .line 245
    goto :goto_2

    .line 246
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/lingala/zip4j/d/c;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_5
    :goto_2
    nop

    .line 256
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tT()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v1}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 258
    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/lingala/zip4j/d/d;->apP:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    :cond_6
    const-string v2, "\\\\"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_7
    invoke-static {v0}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName to add to zip is empty or null. fileName: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' DefaultFolderPath: \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' FileNameInZip: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tO()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {p0}, Lnet/lingala/zip4j/d/c;->o(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isSymlink: true "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 275
    :cond_8
    invoke-static {v1}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 276
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "rootFolderNameInZip: \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    :cond_9
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_a
    return-object v0

    .line 252
    :catch_0
    move-exception p0

    .line 253
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public static fx(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 138
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 139
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 140
    return-object p0

    .line 143
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 147
    invoke-static {p0}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    nop

    .line 151
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    :cond_0
    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 158
    :cond_1
    return-object p0

    .line 148
    :cond_2
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip file name is empty or null, cannot determine zip file name"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fz(Ljava/lang/String;)Z
    .locals 1

    .line 298
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static k(Ljava/io/File;)[B
    .locals 2

    .line 78
    const/4 v0, 0x4

    if-eqz p0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    .line 84
    invoke-static {}, Lnet/lingala/zip4j/d/c;->ug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-static {p0}, Lnet/lingala/zip4j/d/c;->a(Ljava/nio/file/Path;)[B

    move-result-object p0

    return-object p0

    .line 86
    :cond_1
    invoke-static {}, Lnet/lingala/zip4j/d/c;->uh()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lnet/lingala/zip4j/d/c;->ui()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    new-array p0, v0, [B

    return-object p0

    .line 87
    :cond_3
    :goto_0
    invoke-static {p0}, Lnet/lingala/zip4j/d/c;->b(Ljava/nio/file/Path;)[B

    move-result-object p0

    return-object p0

    .line 91
    :catch_0
    move-exception p0

    goto :goto_2

    .line 79
    :cond_4
    :goto_1
    new-array p0, v0, [B
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 91
    :goto_2
    nop

    .line 92
    new-array p0, v0, [B

    return-object p0
.end method

.method public static l(Ljava/io/File;)Z
    .locals 1

    .line 365
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".zip.001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static m(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 369
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 371
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const-string p0, ""

    return-object p0

    .line 375
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/io/File;)[Ljava/io/File;
    .locals 2

    .line 385
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/d/c;->fx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance v1, Lnet/lingala/zip4j/d/c$1;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/d/c$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 393
    if-nez p0, :cond_0

    .line 394
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    return-object p0

    .line 397
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 399
    return-object p0
.end method

.method public static o(Ljava/io/File;)Z
    .locals 0

    .line 408
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 409
    :catch_0
    move-exception p0

    .line 410
    const/4 p0, 0x0

    return p0
.end method

.method public static p(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 416
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 417
    :catch_0
    move-exception p0

    .line 418
    const-string p0, ""

    return-object p0
.end method

.method private static q(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    return-void

    .line 526
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static r(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 531
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    return-void

    .line 532
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Symlink target \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/lingala/zip4j/d/c;->p(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' does not exist for link \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ug()Z
    .locals 2

    .line 437
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 438
    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static uh()Z
    .locals 2

    .line 442
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 443
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static ui()Z
    .locals 2

    .line 447
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 448
    const-string v1, "nux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
