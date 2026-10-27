.class Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$1;
.super Ljava/lang/Object;
.source "KugouMineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-static {}, Lbek;->a()Lbek;

    move-result-object p1

    invoke-virtual {p1}, Lbek;->k()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 55
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.xiaopeng.caraccount"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.xiaopeng.xvs.account.ACTION_ACCOUNT_DIALOG_QR_REQUEST"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->access$000(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    invoke-virtual {v0}, Lbek;->k()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method
