.class public Lbiy;
.super Lbix;
.source "NeteaseReplayDown.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lbix;-><init>()V

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;)Z
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected i()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\u7f51\u6613\u4e91"

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    const-string v0, "NeteaseReplayDown"

    return-object v0
.end method
