.class Lcom/xiaopeng/a/a$g;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method private static ac(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 528
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/a/a$g;->c(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static ad(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 619
    nop

    .line 622
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaopeng/a/b;->qg()Lcom/xiaopeng/a/b;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/a/b;->ah(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 624
    :try_start_1
    const-string v0, "Support"

    const-string v1, "Values.getInt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/a/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 627
    goto :goto_1

    .line 625
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move p1, v0

    .line 626
    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/a/c;->d(Ljava/lang/Exception;)V

    .line 629
    :goto_1
    return p1
.end method

.method static synthetic ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/a/a$g;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic af(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/a/a$g;->ac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic ag(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/a/a$g;->ad(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 536
    nop

    .line 539
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/a/b;->qg()Lcom/xiaopeng/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/a/b;->ah(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 541
    :try_start_1
    const-string p2, "Support"

    const-string v0, "Values.getBoolean"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/xiaopeng/a/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    goto :goto_1

    .line 542
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move p1, p2

    .line 543
    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/a/c;->d(Ljava/lang/Exception;)V

    .line 546
    :goto_1
    return p1
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 578
    const-string v0, "Unknown"

    .line 581
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/a/b;->qg()Lcom/xiaopeng/a/b;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/a/b;->ah(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    if-eqz p2, :cond_0

    .line 584
    :try_start_1
    const-string p2, "Support"

    const-string v0, "Values.getString"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/xiaopeng/a/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    move-exception p0

    goto :goto_1

    .line 588
    :cond_0
    :goto_0
    goto :goto_2

    .line 586
    :catch_1
    move-exception p0

    move-object v1, v0

    .line 587
    :goto_1
    invoke-static {p0}, Lcom/xiaopeng/a/c;->d(Ljava/lang/Exception;)V

    .line 590
    :goto_2
    if-nez v1, :cond_1

    .line 591
    const-string v1, "Unknown"

    .line 594
    :cond_1
    return-object v1
.end method

.method private static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 598
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/a/a$g;->d(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
