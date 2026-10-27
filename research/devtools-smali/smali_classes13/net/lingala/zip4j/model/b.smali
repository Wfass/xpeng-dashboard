.class public abstract Lnet/lingala/zip4j/model/b;
.super Lnet/lingala/zip4j/model/o;
.source "AbstractFileHeader.java"


# instance fields
.field private ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field private anh:I

.field private ani:[B

.field private anj:J

.field private ank:J

.field private anl:J

.field private anm:I

.field private ann:I

.field private ano:Z

.field private anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field private anq:Z

.field private anr:Lnet/lingala/zip4j/model/n;

.field private ans:Lnet/lingala/zip4j/model/a;

.field private ant:Z

.field private anu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/h;",
            ">;"
        }
    .end annotation
.end field

.field private crc:J

.field private fileName:Ljava/lang/String;

.field private isDirectory:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lnet/lingala/zip4j/model/o;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/b;->crc:J

    .line 16
    iput-wide v0, p0, Lnet/lingala/zip4j/model/b;->ank:J

    .line 17
    iput-wide v0, p0, Lnet/lingala/zip4j/model/b;->anl:J

    .line 22
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoY:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/b;->anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-void
.end method


# virtual methods
.method public C(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/h;",
            ">;)V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lnet/lingala/zip4j/model/b;->anu:Ljava/util/List;

    .line 168
    return-void
.end method

.method public N([B)V
    .locals 0

    .line 43
    iput-object p1, p0, Lnet/lingala/zip4j/model/b;->ani:[B

    .line 44
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/a;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lnet/lingala/zip4j/model/b;->ans:Lnet/lingala/zip4j/model/a;

    .line 152
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/lingala/zip4j/model/b;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 52
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lnet/lingala/zip4j/model/b;->anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 128
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/n;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lnet/lingala/zip4j/model/b;->anr:Lnet/lingala/zip4j/model/n;

    .line 144
    return-void
.end method

.method public bt(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/b;->ano:Z

    .line 120
    return-void
.end method

.method public bu(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/b;->anq:Z

    .line 136
    return-void
.end method

.method public bv(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/b;->ant:Z

    .line 160
    return-void
.end method

.method public bw(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/b;->isDirectory:Z

    .line 176
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 180
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 181
    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Lnet/lingala/zip4j/model/b;

    if-nez v1, :cond_1

    .line 185
    return v0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/b;->getFileName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lnet/lingala/zip4j/model/b;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/b;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fc(I)V
    .locals 0

    .line 35
    iput p1, p0, Lnet/lingala/zip4j/model/b;->anh:I

    .line 36
    return-void
.end method

.method public fd(I)V
    .locals 0

    .line 95
    iput p1, p0, Lnet/lingala/zip4j/model/b;->anm:I

    .line 96
    return-void
.end method

.method public fe(I)V
    .locals 0

    .line 103
    iput p1, p0, Lnet/lingala/zip4j/model/b;->ann:I

    .line 104
    return-void
.end method

.method public getCompressedSize()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lnet/lingala/zip4j/model/b;->ank:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lnet/lingala/zip4j/model/b;->crc:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lnet/lingala/zip4j/model/b;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lnet/lingala/zip4j/model/b;->anj:J

    return-wide v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/b;->ano:Z

    return v0
.end method

.method public sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1

    .line 47
    iget-object v0, p0, Lnet/lingala/zip4j/model/b;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public sM()I
    .locals 1

    .line 31
    iget v0, p0, Lnet/lingala/zip4j/model/b;->anh:I

    return v0
.end method

.method public sN()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/lingala/zip4j/model/b;->ani:[B

    return-object v0
.end method

.method public sO()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lnet/lingala/zip4j/model/b;->anl:J

    return-wide v0
.end method

.method public sP()I
    .locals 1

    .line 91
    iget v0, p0, Lnet/lingala/zip4j/model/b;->anm:I

    return v0
.end method

.method public sQ()I
    .locals 1

    .line 99
    iget v0, p0, Lnet/lingala/zip4j/model/b;->ann:I

    return v0
.end method

.method public sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/lingala/zip4j/model/b;->anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-object v0
.end method

.method public sS()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/b;->anq:Z

    return v0
.end method

.method public sT()Lnet/lingala/zip4j/model/n;
    .locals 1

    .line 139
    iget-object v0, p0, Lnet/lingala/zip4j/model/b;->anr:Lnet/lingala/zip4j/model/n;

    return-object v0
.end method

.method public sU()Lnet/lingala/zip4j/model/a;
    .locals 1

    .line 147
    iget-object v0, p0, Lnet/lingala/zip4j/model/b;->ans:Lnet/lingala/zip4j/model/a;

    return-object v0
.end method

.method public sV()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/b;->ant:Z

    return v0
.end method

.method public sW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/h;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lnet/lingala/zip4j/model/b;->anu:Ljava/util/List;

    return-object v0
.end method

.method public setCompressedSize(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lnet/lingala/zip4j/model/b;->ank:J

    .line 80
    return-void
.end method

.method public setCrc(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lnet/lingala/zip4j/model/b;->crc:J

    .line 72
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lnet/lingala/zip4j/model/b;->fileName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public t(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lnet/lingala/zip4j/model/b;->anj:J

    .line 60
    return-void
.end method

.method public u(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lnet/lingala/zip4j/model/b;->anl:J

    .line 88
    return-void
.end method
