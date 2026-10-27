.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->navigateFrom3rd(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;->c:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "position"

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 302
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: ====== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    new-instance v1, Lbli$d;

    invoke-direct {v1, v0}, Lbli$d;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
