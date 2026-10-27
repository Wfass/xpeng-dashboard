.class public Lnet/lingala/zip4j/d/g;
.super Ljava/lang/Object;
.source "ZipVersionUtils.java"


# direct methods
.method public static a(Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/d/e;)I
    .locals 4

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 13
    sget-object v1, Lnet/lingala/zip4j/headers/VersionMadeBy;->ams:Lnet/lingala/zip4j/headers/VersionMadeBy;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/VersionMadeBy;->sv()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 14
    sget-object v1, Lnet/lingala/zip4j/headers/VersionMadeBy;->amu:Lnet/lingala/zip4j/headers/VersionMadeBy;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/VersionMadeBy;->sv()B

    move-result v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 15
    invoke-static {}, Lnet/lingala/zip4j/d/c;->ug()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipParameters;->tW()Z

    move-result p0

    if-nez p0, :cond_0

    .line 16
    sget-object p0, Lnet/lingala/zip4j/headers/VersionMadeBy;->amt:Lnet/lingala/zip4j/headers/VersionMadeBy;

    invoke-virtual {p0}, Lnet/lingala/zip4j/headers/VersionMadeBy;->sv()B

    move-result p0

    aput-byte p0, v0, v3

    .line 19
    :cond_0
    invoke-virtual {p1, v0, v2}, Lnet/lingala/zip4j/d/e;->n([BI)I

    move-result p0

    return p0
.end method

.method public static h(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/headers/VersionNeededToExtract;
    .locals 5

    .line 23
    sget-object v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->amw:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 25
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipParameters;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoV:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v1, v2, :cond_0

    .line 26
    sget-object v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->amx:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 29
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipParameters;->tQ()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 30
    sget-object v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->amy:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 33
    :cond_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipParameters;->tH()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->apb:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 34
    sget-object v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->amz:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    .line 37
    :cond_2
    return-object v0
.end method
