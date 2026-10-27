.class final Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry$MyHandler;
.super Landroid/os/Handler;
.source "CarControlProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field private static final MSG_NOTIFY_URI_CHANGED:I = 0x1


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$1",
            "looper"
        }
    .end annotation

    .line 1273
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry$MyHandler;->this$1:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    .line 1274
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1279
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1280
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    .line 1282
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry$MyHandler;->this$1:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry$MyHandler;->this$1:Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/provider/CarControlProvider$SettingsRegistry;->this$0:Lcom/xiaopeng/carcontrol/provider/CarControlProvider;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/provider/CarControlProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CarControlProvider"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
