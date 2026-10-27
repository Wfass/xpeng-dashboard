.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TouchTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$1;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.xiaopeng.action.TOUCH_TEST_END"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$1;->MA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->finish()V

    .line 52
    :cond_0
    return-void
.end method
