.class public Lbpl;
.super Lbpk;
.source "PlayerLrcPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lbpk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lbpk;->a(Ljava/lang/String;I)V

    .line 16
    new-instance p1, Lbli$d;

    const-string p2, "lrc"

    invoke-direct {p1, p2}, Lbli$d;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 10
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAY_LRC"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
