.class public Lcom/xiaopeng/musicradio/common/i;
.super Lcom/xiaopeng/musicradio/common/a;
.source "NeteaseUrlConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/a;-><init>()V

    return-void
.end method


# virtual methods
.method public N()Ljava/lang/String;
    .locals 1

    const-string v0, "/music/report/songListen"

    .line 15
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/common/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    const-string v0, "https://xmart.xiaopeng.com/media/v3/search"

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    const-string v0, "/music/songs/play/list/get_first"

    .line 25
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/common/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/i;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    const-string v0, "/music/songs/play/list/upload"

    .line 35
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/common/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "https://xmart.xiaopeng.com/media/v4"

    return-object v0
.end method
