.class Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$9;
.super Ljava/lang/Object;
.source "MProgramMineFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->showAsyncDialog()V
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

    .line 254
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$9;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1

    const/4 p2, 0x0

    .line 257
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 258
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$9;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$700(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)Lcom/xiaopeng/musicradio/mine/main/sync/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$9;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    new-instance p2, Lcom/xiaopeng/musicradio/mine/main/sync/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/b;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$702(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;Lcom/xiaopeng/musicradio/mine/main/sync/b;)Lcom/xiaopeng/musicradio/mine/main/sync/b;

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$9;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$700(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)Lcom/xiaopeng/musicradio/mine/main/sync/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/b;->a()V

    .line 262
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$9;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$700(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)Lcom/xiaopeng/musicradio/mine/main/sync/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/b;->b()V

    return-void
.end method
