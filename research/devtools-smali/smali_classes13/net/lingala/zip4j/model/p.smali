.class public Lnet/lingala/zip4j/model/p;
.super Ljava/lang/Object;
.source "ZipModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private alk:Ljava/io/File;

.field private amB:J

.field private aoa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/j;",
            ">;"
        }
    .end annotation
.end field

.field private aob:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private aoc:Lnet/lingala/zip4j/model/c;

.field private aod:Lnet/lingala/zip4j/model/d;

.field private aoe:Lnet/lingala/zip4j/model/f;

.field private aof:Lnet/lingala/zip4j/model/l;

.field private aog:Lnet/lingala/zip4j/model/m;

.field private aoh:Z

.field private aoi:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/p;->aoa:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/p;->aob:Ljava/util/List;

    .line 27
    new-instance v0, Lnet/lingala/zip4j/model/c;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/c;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/p;->aoc:Lnet/lingala/zip4j/model/c;

    .line 28
    new-instance v0, Lnet/lingala/zip4j/model/d;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/d;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/p;->aod:Lnet/lingala/zip4j/model/d;

    .line 29
    new-instance v0, Lnet/lingala/zip4j/model/f;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/f;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/p;->aoe:Lnet/lingala/zip4j/model/f;

    .line 30
    new-instance v0, Lnet/lingala/zip4j/model/l;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/l;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/p;->aof:Lnet/lingala/zip4j/model/l;

    .line 31
    new-instance v0, Lnet/lingala/zip4j/model/m;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/m;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/p;->aog:Lnet/lingala/zip4j/model/m;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/p;->aoi:Z

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/p;->amB:J

    .line 43
    return-void
.end method


# virtual methods
.method public F(J)V
    .locals 0

    .line 157
    iput-wide p1, p0, Lnet/lingala/zip4j/model/p;->amB:J

    .line 158
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/d;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lnet/lingala/zip4j/model/p;->aod:Lnet/lingala/zip4j/model/d;

    .line 67
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/f;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lnet/lingala/zip4j/model/p;->aoe:Lnet/lingala/zip4j/model/f;

    .line 75
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/l;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lnet/lingala/zip4j/model/p;->aof:Lnet/lingala/zip4j/model/l;

    .line 109
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/m;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lnet/lingala/zip4j/model/p;->aog:Lnet/lingala/zip4j/model/m;

    .line 118
    return-void
.end method

.method public by(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/p;->aoh:Z

    .line 92
    return-void
.end method

.method public bz(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/p;->aoi:Z

    .line 126
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 161
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/io/File;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lnet/lingala/zip4j/model/p;->alk:Ljava/io/File;

    .line 100
    return-void
.end method

.method public sB()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lnet/lingala/zip4j/model/p;->amB:J

    return-wide v0
.end method

.method public tA()Lnet/lingala/zip4j/model/d;
    .locals 1

    .line 62
    iget-object v0, p0, Lnet/lingala/zip4j/model/p;->aod:Lnet/lingala/zip4j/model/d;

    return-object v0
.end method

.method public tB()Lnet/lingala/zip4j/model/f;
    .locals 1

    .line 70
    iget-object v0, p0, Lnet/lingala/zip4j/model/p;->aoe:Lnet/lingala/zip4j/model/f;

    return-object v0
.end method

.method public tC()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/p;->aoh:Z

    return v0
.end method

.method public tD()Ljava/io/File;
    .locals 1

    .line 95
    iget-object v0, p0, Lnet/lingala/zip4j/model/p;->alk:Ljava/io/File;

    return-object v0
.end method

.method public tE()Lnet/lingala/zip4j/model/l;
    .locals 1

    .line 103
    iget-object v0, p0, Lnet/lingala/zip4j/model/p;->aof:Lnet/lingala/zip4j/model/l;

    return-object v0
.end method

.method public tF()Lnet/lingala/zip4j/model/m;
    .locals 1

    .line 112
    iget-object v0, p0, Lnet/lingala/zip4j/model/p;->aog:Lnet/lingala/zip4j/model/m;

    return-object v0
.end method

.method public tG()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/p;->aoi:Z

    return v0
.end method

.method public tz()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/j;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lnet/lingala/zip4j/model/p;->aoa:Ljava/util/List;

    return-object v0
.end method
