.class public Lcom/xiaopeng/a/a$a;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static dZ(Ljava/lang/String;)Z
    .locals 1

    .line 371
    const-string v0, "enable"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->af(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static ea(Ljava/lang/String;)I
    .locals 1

    .line 387
    nop

    .line 389
    :try_start_0
    const-string v0, "address"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    goto :goto_0

    .line 390
    :catch_0
    move-exception p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 393
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static eb(Ljava/lang/String;)I
    .locals 1

    .line 397
    nop

    .line 399
    :try_start_0
    const-string v0, "did"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    goto :goto_0

    .line 400
    :catch_0
    move-exception p0

    .line 401
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 403
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static ec(Ljava/lang/String;)I
    .locals 1

    .line 407
    const-string v0, "length"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ag(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static ed(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 411
    const-string v0, "extra"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1

    .line 379
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ag(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 375
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
