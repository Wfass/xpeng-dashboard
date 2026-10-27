.class Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "GrabLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/log/GrabLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 593
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 595
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 596
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 597
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->c(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    .line 598
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 599
    if-eqz p2, :cond_0

    .line 600
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-string p2, "tcpdump_eth"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    .line 601
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-string p2, "tcpdump_tbox"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-string p2, "tcpdump_wlan"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->c(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-string p2, "tcpdump_wlan"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 607
    if-eqz p2, :cond_2

    .line 608
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-string p2, "tcpdump_wlan"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    .line 609
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-string p2, "tcpdump_tbox"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->c(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    .line 610
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-string p2, "tcpdump_eth"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->c(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-string p2, "tcpdump_tbox"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    .line 613
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$2;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-string p2, "tcpdump_eth"

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)V

    .line 618
    :cond_3
    :goto_0
    return-void
.end method
