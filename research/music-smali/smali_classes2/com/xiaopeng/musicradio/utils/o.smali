.class public Lcom/xiaopeng/musicradio/utils/o;
.super Ljava/lang/Object;
.source "DailyUtil.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .line 13
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 15
    sget v0, Lbub$a;->daily_title_netease:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 17
    sget v0, Lbub$a;->daily_title_kugou:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :cond_1
    sget v0, Lbub$a;->daily_title:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 25
    sget p0, Lbub$a;->daily_title_netease:I

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 27
    sget p0, Lbub$a;->daily_title_kugou:I

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_1
    sget p0, Lbub$a;->daily_title:I

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
