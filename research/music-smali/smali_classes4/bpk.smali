.class public abstract Lbpk;
.super Ljava/lang/Object;
.source "PlayerBasePage.java"

# interfaces
.implements Lbpf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    const-string p1, "IPageArrive"

    const-string v0, "open: ======"

    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p2}, Lcom/xiaopeng/musicradio/page/PageNav;->navPlayer(I)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 12
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAYER"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "IPageArrive"

    const-string v1, "close: ======="

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lbni;->a()V

    return-void
.end method
