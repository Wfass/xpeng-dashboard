.class public Lbie;
.super Ljava/lang/Object;
.source "DailyUtil.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .line 14
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 16
    sget v0, Lbez$g;->daily_title_netease:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 18
    sget v0, Lbez$g;->daily_title_kugou:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_1
    sget v0, Lbez$g;->daily_title:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
