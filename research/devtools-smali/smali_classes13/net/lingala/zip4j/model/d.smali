.class public Lnet/lingala/zip4j/model/d;
.super Ljava/lang/Object;
.source "CentralDirectory.java"


# instance fields
.field private anv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/i;",
            ">;"
        }
    .end annotation
.end field

.field private anw:Lnet/lingala/zip4j/model/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/d;->anv:Ljava/util/List;

    .line 25
    new-instance v0, Lnet/lingala/zip4j/model/e;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/e;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/d;->anw:Lnet/lingala/zip4j/model/e;

    return-void
.end method


# virtual methods
.method public D(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/i;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lnet/lingala/zip4j/model/d;->anv:Ljava/util/List;

    .line 33
    return-void
.end method

.method public sX()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/i;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lnet/lingala/zip4j/model/d;->anv:Ljava/util/List;

    return-object v0
.end method
