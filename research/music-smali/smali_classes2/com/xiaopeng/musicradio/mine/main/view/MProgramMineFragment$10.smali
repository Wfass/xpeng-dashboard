.class Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$10;
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
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/f;

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;Lcom/xiaopeng/musicradio/widget/f;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$10;->b:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$10;->a:Lcom/xiaopeng/musicradio/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$10;->a:Lcom/xiaopeng/musicradio/widget/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/f;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method
