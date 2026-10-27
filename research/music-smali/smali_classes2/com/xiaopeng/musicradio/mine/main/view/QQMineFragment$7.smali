.class Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$7;
.super Ljava/lang/Object;
.source "QQMineFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->showLogoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$7;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 440
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$7;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->logout()V

    .line 442
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$7;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/f;->dismiss()V

    .line 443
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$7;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    return-void
.end method
