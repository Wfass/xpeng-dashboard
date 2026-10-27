.class public Lnet/lingala/zip4j/c/d$a;
.super Lnet/lingala/zip4j/c/c;
.source "AddFilesToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final apG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final apH:Lnet/lingala/zip4j/model/ZipParameters;


# direct methods
.method public constructor <init>(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "Lnet/lingala/zip4j/model/k;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/c/c;-><init>(Lnet/lingala/zip4j/model/k;)V

    .line 46
    iput-object p1, p0, Lnet/lingala/zip4j/c/d$a;->apG:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lnet/lingala/zip4j/c/d$a;->apH:Lnet/lingala/zip4j/model/ZipParameters;

    .line 48
    return-void
.end method

.method static synthetic b(Lnet/lingala/zip4j/c/d$a;)Lnet/lingala/zip4j/model/ZipParameters;
    .locals 0

    .line 40
    iget-object p0, p0, Lnet/lingala/zip4j/c/d$a;->apH:Lnet/lingala/zip4j/model/ZipParameters;

    return-object p0
.end method

.method static synthetic c(Lnet/lingala/zip4j/c/d$a;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lnet/lingala/zip4j/c/d$a;->apG:Ljava/util/List;

    return-object p0
.end method
