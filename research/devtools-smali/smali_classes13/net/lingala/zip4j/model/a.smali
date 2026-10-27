.class public Lnet/lingala/zip4j/model/a;
.super Lnet/lingala/zip4j/model/o;
.source "AESExtraDataRecord.java"


# instance fields
.field private and:Lnet/lingala/zip4j/model/enums/AesVersion;

.field private ane:Ljava/lang/String;

.field private anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field private ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field private dataSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lnet/lingala/zip4j/model/o;-><init>()V

    .line 33
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amp:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 34
    const/4 v0, 0x7

    iput v0, p0, Lnet/lingala/zip4j/model/a;->dataSize:I

    .line 35
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->aoI:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v0, p0, Lnet/lingala/zip4j/model/a;->and:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 36
    const-string v0, "AE"

    iput-object v0, p0, Lnet/lingala/zip4j/model/a;->ane:Ljava/lang/String;

    .line 37
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoF:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v0, p0, Lnet/lingala/zip4j/model/a;->anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 38
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoV:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/a;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lnet/lingala/zip4j/model/a;->anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 71
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/enums/AesVersion;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lnet/lingala/zip4j/model/a;->and:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 55
    return-void
.end method

.method public a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lnet/lingala/zip4j/model/a;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 79
    return-void
.end method

.method public fr(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lnet/lingala/zip4j/model/a;->ane:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public getDataSize()I
    .locals 1

    .line 42
    iget v0, p0, Lnet/lingala/zip4j/model/a;->dataSize:I

    return v0
.end method

.method public sI()Lnet/lingala/zip4j/model/enums/AesVersion;
    .locals 1

    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/model/a;->and:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-object v0
.end method

.method public sJ()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lnet/lingala/zip4j/model/a;->ane:Ljava/lang/String;

    return-object v0
.end method

.method public sK()Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .locals 1

    .line 66
    iget-object v0, p0, Lnet/lingala/zip4j/model/a;->anf:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method

.method public sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1

    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/model/a;->ang:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public setDataSize(I)V
    .locals 0

    .line 46
    iput p1, p0, Lnet/lingala/zip4j/model/a;->dataSize:I

    .line 47
    return-void
.end method
