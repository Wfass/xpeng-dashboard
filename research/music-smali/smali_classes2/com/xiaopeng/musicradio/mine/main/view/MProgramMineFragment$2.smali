.class Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$2;
.super Ljava/lang/Object;
.source "MProgramMineFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->showXmlyLogoutDialog()V
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

    .line 284
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 287
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$800(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->l()V

    return-void
.end method
