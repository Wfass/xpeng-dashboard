.class public Lnet/lingala/zip4j/c/e$a;
.super Lnet/lingala/zip4j/c/c;
.source "AddFolderToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final apH:Lnet/lingala/zip4j/model/ZipParameters;

.field private final apI:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/k;)V
    .locals 0

    .line 80
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/c/c;-><init>(Lnet/lingala/zip4j/model/k;)V

    .line 81
    iput-object p1, p0, Lnet/lingala/zip4j/c/e$a;->apI:Ljava/io/File;

    .line 82
    iput-object p2, p0, Lnet/lingala/zip4j/c/e$a;->apH:Lnet/lingala/zip4j/model/ZipParameters;

    .line 83
    return-void
.end method

.method static synthetic d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;
    .locals 0

    .line 75
    iget-object p0, p0, Lnet/lingala/zip4j/c/e$a;->apH:Lnet/lingala/zip4j/model/ZipParameters;

    return-object p0
.end method

.method static synthetic e(Lnet/lingala/zip4j/c/e$a;)Ljava/io/File;
    .locals 0

    .line 75
    iget-object p0, p0, Lnet/lingala/zip4j/c/e$a;->apI:Ljava/io/File;

    return-object p0
.end method
