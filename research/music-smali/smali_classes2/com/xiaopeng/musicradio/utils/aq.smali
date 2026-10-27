.class public Lcom/xiaopeng/musicradio/utils/aq;
.super Ljava/lang/Object;
.source "MusicSPHelper.java"


# direct methods
.method public static a(Ljava/lang/String;I)V
    .locals 1

    .line 34
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 35
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Larg;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 1

    .line 61
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;J)V

    .line 62
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Larg;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Larg;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 1

    .line 43
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 45
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-virtual {v0, p0}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p1

    :cond_1
    return v0
.end method

.method public static b(Ljava/lang/String;J)J
    .locals 3

    .line 75
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 77
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-virtual {v0, p0}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_0
    return-wide p1

    :cond_1
    return-wide v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 23
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-virtual {v0, p0}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method
