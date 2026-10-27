.class public Lbsd;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# static fields
.field public static volatile a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 4

    .line 24
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "BluetoothService"

    const-string v2, "openSettingBlueDialog: \u8c03\u7528\u5806\u6808\u5982\u4e0b --------- "

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.xiaopeng.intent.action.POPUP_BLUETOOTH"

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.xiaopeng.car.settings"

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    const-string v2, "screen_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 33
    sput-boolean v0, Lbsd;->a:Z

    goto :goto_0

    :cond_0
    const-string v0, "BluetoothHelper"

    const-string v1, "don\'t open bluetooth dialog as not in foreground"

    .line 35
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b()V
    .locals 2

    .line 40
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->no_bt_connect_hint:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    return-void
.end method
