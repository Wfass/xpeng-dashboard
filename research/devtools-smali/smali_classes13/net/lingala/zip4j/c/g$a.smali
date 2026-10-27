.class public Lnet/lingala/zip4j/c/g$a;
.super Lnet/lingala/zip4j/c/c;
.source "RemoveFilesFromZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final apL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lnet/lingala/zip4j/model/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/lingala/zip4j/model/k;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/c/c;-><init>(Lnet/lingala/zip4j/model/k;)V

    .line 157
    iput-object p1, p0, Lnet/lingala/zip4j/c/g$a;->apL:Ljava/util/List;

    .line 158
    return-void
.end method

.method static synthetic b(Lnet/lingala/zip4j/c/g$a;)Ljava/util/List;
    .locals 0

    .line 152
    iget-object p0, p0, Lnet/lingala/zip4j/c/g$a;->apL:Ljava/util/List;

    return-object p0
.end method
