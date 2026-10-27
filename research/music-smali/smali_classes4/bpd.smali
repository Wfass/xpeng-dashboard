.class public abstract Lbpd;
.super Ljava/lang/Object;
.source "HomeBasePage.java"

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

    const-string v0, "com.xiaopeng.musicradio.home.view.HomeActivity"

    .line 12
    invoke-virtual {p0, p1, p2, v0}, Lbpd;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IPageArrive"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/CommonEvent$as;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$as;-><init>(Landroid/net/Uri;)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
