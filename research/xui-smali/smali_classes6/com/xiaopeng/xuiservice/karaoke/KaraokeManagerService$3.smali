.class Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$3;
.super Ljava/lang/Object;
.source "KaraokeManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$3;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 209
    const-string v0, "KaraokeManagerService"

    const-string v1, "onServiceConnected "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$200()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "ambient"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$102(Lcom/xiaopeng/xuimanager/ambient/AmbientManager;)Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    .line 212
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$100()Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$3;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$300(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->registerListener(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 220
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$102(Lcom/xiaopeng/xuimanager/ambient/AmbientManager;)Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    .line 221
    return-void
.end method
