.class public Lcom/xiaopeng/musicradio/music/singer/main/view/NetSingerMainFragment;
.super Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;
.source "NetSingerMainFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/netsinger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onMusicAuthCheck(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 23
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object p1

    invoke-interface {p1}, Lbeg;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/NetSingerMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "/music/fragment/netsinger"

    invoke-static {p1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
