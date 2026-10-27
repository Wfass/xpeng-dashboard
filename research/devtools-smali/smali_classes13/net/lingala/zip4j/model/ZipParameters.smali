.class public Lnet/lingala/zip4j/model/ZipParameters;
.super Ljava/lang/Object;
.source "ZipParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    }
.end annotation


# instance fields
.field private anN:Ljava/lang/String;

.field private and:Lnet/lingala/zip4j/model/enums/AesVersion;

.field private anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field private ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field private anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field private aoj:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field private aok:Z

.field private aol:Z

.field private aom:Z

.field private aon:Z

.field private aoo:J

.field private aop:Ljava/lang/String;

.field private aoq:Ljava/lang/String;

.field private aor:J

.field private aos:J

.field private aot:Z

.field private aou:Z

.field private aov:Ljava/lang/String;

.field private aow:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field private aox:Lnet/lingala/zip4j/model/g;

.field private aoy:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoV:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 49
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->aoO:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoj:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aok:Z

    .line 51
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoY:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aol:Z

    .line 53
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aom:Z

    .line 54
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoF:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 55
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->aoI:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->and:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 56
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aon:Z

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aor:J

    .line 61
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aos:J

    .line 62
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aot:Z

    .line 63
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aou:Z

    .line 66
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->aoA:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aow:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 78
    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoV:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 49
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->aoO:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoj:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aok:Z

    .line 51
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoY:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aol:Z

    .line 53
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aom:Z

    .line 54
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoF:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 55
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->aoI:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->and:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 56
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aon:Z

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aor:J

    .line 61
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aos:J

    .line 62
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aot:Z

    .line 63
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aou:Z

    .line 66
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->aoA:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aow:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 85
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 86
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tI()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoj:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 87
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tH()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aok:Z

    .line 88
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 89
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tJ()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aol:Z

    .line 90
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tK()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aom:Z

    .line 91
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sK()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 92
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sI()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->and:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 93
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tL()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aon:Z

    .line 94
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tM()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoo:J

    .line 95
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aop:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoq:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tP()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aor:J

    .line 98
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tQ()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aos:J

    .line 99
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tR()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aot:Z

    .line 100
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tS()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aou:Z

    .line 101
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tT()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aov:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->anN:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tU()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aow:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 104
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tV()Lnet/lingala/zip4j/model/g;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aox:Lnet/lingala/zip4j/model/g;

    .line 105
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tW()Z

    move-result p1

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoy:Z

    .line 106
    return-void
.end method


# virtual methods
.method public G(J)V
    .locals 0

    .line 264
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoo:J

    .line 265
    return-void
.end method

.method public H(J)V
    .locals 2

    .line 306
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 307
    return-void

    .line 310
    :cond_0
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aor:J

    .line 311
    return-void
.end method

.method public I(J)V
    .locals 0

    .line 318
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aos:J

    .line 319
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 225
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/enums/CompressionLevel;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoj:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 170
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 122
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 154
    return-void
.end method

.method public bA(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aok:Z

    .line 138
    return-void
.end method

.method public bB(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aot:Z

    .line 327
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 208
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fu(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aop:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public fv(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoq:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public sI()Lnet/lingala/zip4j/model/enums/AesVersion;
    .locals 1

    .line 232
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->and:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-object v0
.end method

.method public sK()Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .locals 1

    .line 216
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method

.method public sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1

    .line 113
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;
    .locals 1

    .line 145
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->anp:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-object v0
.end method

.method public tH()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aok:Z

    return v0
.end method

.method public tI()Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .locals 1

    .line 161
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoj:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-object v0
.end method

.method public tJ()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aol:Z

    return v0
.end method

.method public tK()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aom:Z

    return v0
.end method

.method public tL()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aon:Z

    return v0
.end method

.method public tM()J
    .locals 2

    .line 260
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoo:J

    return-wide v0
.end method

.method public tN()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aop:Ljava/lang/String;

    return-object v0
.end method

.method public tO()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoq:Ljava/lang/String;

    return-object v0
.end method

.method public tP()J
    .locals 2

    .line 297
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aor:J

    return-wide v0
.end method

.method public tQ()J
    .locals 2

    .line 314
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aos:J

    return-wide v0
.end method

.method public tR()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aot:Z

    return v0
.end method

.method public tS()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aou:Z

    return v0
.end method

.method public tT()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aov:Ljava/lang/String;

    return-object v0
.end method

.method public tU()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .locals 1

    .line 377
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aow:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-object v0
.end method

.method public tV()Lnet/lingala/zip4j/model/g;
    .locals 1

    .line 393
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aox:Lnet/lingala/zip4j/model/g;

    return-object v0
.end method

.method public tW()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aoy:Z

    return v0
.end method

.method public tk()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->anN:Ljava/lang/String;

    return-object v0
.end method
