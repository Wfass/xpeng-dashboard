.class Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$7;
.super Ljava/lang/Object;
.source "MProgramMineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$7;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    invoke-static {}, Lbek;->a()Lbek;

    move-result-object p1

    invoke-virtual {p1}, Lbek;->k()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 235
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.xiaopeng.caraccount"

    .line 236
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.xiaopeng.xvs.account.ACTION_ACCOUNT_DIALOG_QR_REQUEST"

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$7;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$7;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$600(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    invoke-virtual {v0}, Lbek;->k()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->b(J)V

    :cond_1
    :goto_0
    return-void
.end method
