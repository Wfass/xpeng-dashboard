.class Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$3;
.super Ljava/lang/Object;
.source "KugouMineFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->showAsyncDialog()V
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

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$3;->a:Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1

    const/4 p2, 0x0

    .line 149
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$3;->a:Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->access$100(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;)Lcom/xiaopeng/musicradio/mine/main/sync/a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$3;->a:Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;

    new-instance p2, Lcom/xiaopeng/musicradio/mine/main/sync/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/a;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->access$102(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;Lcom/xiaopeng/musicradio/mine/main/sync/a;)Lcom/xiaopeng/musicradio/mine/main/sync/a;

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$3;->a:Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->access$100(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;)Lcom/xiaopeng/musicradio/mine/main/sync/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/a;->a()V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$3;->a:Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->access$100(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;)Lcom/xiaopeng/musicradio/mine/main/sync/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b()V

    return-void
.end method
