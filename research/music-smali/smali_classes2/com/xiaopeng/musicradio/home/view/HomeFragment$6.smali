.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;->handleIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Landroid/content/Intent;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 921
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 922
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchAccount accountType: ====== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HomeFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 925
    iget-object v2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v3

    invoke-virtual {v3}, Lbdt;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setIndex(I)V

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 928
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setIndex(I)V

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    const-string v1, "open_music_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 932
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dolby_zone"

    .line 933
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->showDolbyZonePage()V

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 937
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 938
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bluetooth"

    .line 939
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 940
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setIndex(I)V

    .line 941
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$1200(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->c()V

    .line 943
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
