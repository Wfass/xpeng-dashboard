.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;->navigateFrom3rd(Landroid/content/Intent;)V
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

    .line 960
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 963
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 964
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 965
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 966
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 968
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigateFrom3rd: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " extra = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " uri = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HomeFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 969
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$1300(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->selectTab(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
