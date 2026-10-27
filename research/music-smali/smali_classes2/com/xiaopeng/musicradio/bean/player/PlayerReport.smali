.class public Lcom/xiaopeng/musicradio/bean/player/PlayerReport;
.super Ljava/lang/Object;
.source "PlayerReport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initReport()V
    .locals 1

    .line 10
    new-instance v0, Lcom/xiaopeng/musicradio/bean/player/PlayerReport$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerReport$1;-><init>()V

    invoke-static {v0}, Lbkz;->a(Lbkz$a;)V

    return-void
.end method
