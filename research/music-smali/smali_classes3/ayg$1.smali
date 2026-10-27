.class Layg$1;
.super Ljava/lang/Object;
.source "AudioVolumeModel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layg;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layg;


# direct methods
.method constructor <init>(Layg;)V
    .locals 0

    .line 34
    iput-object p1, p0, Layg$1;->a:Layg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "AudioVolumeModel"

    const-string p2, "onServiceConnected!!!!!!"

    .line 37
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    :try_start_0
    iget-object p2, p0, Layg$1;->a:Layg;

    iget-object v0, p0, Layg$1;->a:Layg;

    invoke-static {v0}, Layg;->a(Layg;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "smart"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    invoke-static {p2, v0}, Layg;->a(Layg;Lcom/xiaopeng/xuimanager/smart/SmartManager;)Lcom/xiaopeng/xuimanager/smart/SmartManager;

    .line 40
    iget-object p2, p0, Layg$1;->a:Layg;

    invoke-static {p2}, Layg;->b(Layg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "onServiceConnectedException:"

    .line 42
    invoke-static {p1, v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "AudioVolumeModel"

    const-string v0, "onServiceDisconnected"

    .line 48
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
