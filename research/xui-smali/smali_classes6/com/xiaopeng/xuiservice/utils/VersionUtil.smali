.class public Lcom/xiaopeng/xuiservice/utils/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 8

    .line 13
    const-string v0, "ro.build.display.id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "versionInfo":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 15
    return-object v1

    .line 18
    :cond_0
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "splits":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 20
    return-object v1

    .line 23
    :cond_1
    const/4 v3, 0x1

    aget-object v5, v2, v3

    .line 25
    .local v5, "version":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 26
    return-object v1

    .line 29
    :cond_2
    const-string v6, "V"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v4, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 35
    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 37
    array-length v6, v2

    const/4 v7, 0x3

    if-ge v6, v7, :cond_4

    .line 38
    return-object v1

    .line 41
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 30
    :cond_5
    :goto_0
    return-object v1
.end method
