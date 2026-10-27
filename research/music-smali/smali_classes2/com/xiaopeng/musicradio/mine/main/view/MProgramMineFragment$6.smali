.class Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$6;
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

    .line 220
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$6;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$6;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->showBuyDialog()V

    :cond_0
    return-void
.end method
