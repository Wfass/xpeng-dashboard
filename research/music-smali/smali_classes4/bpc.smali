.class public Lbpc;
.super Lbpd;
.source "HistoryPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lbpd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 8
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_HISTORY"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
