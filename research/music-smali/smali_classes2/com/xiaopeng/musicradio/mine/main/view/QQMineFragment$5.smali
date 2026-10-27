.class Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$5;
.super Ljava/lang/Object;
.source "QQMineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->setListener()V
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

    .line 281
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$5;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$5;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->showContinuePlaySettingDialog()V

    :cond_0
    return-void
.end method
