.class Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "KaraokeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBinderDied(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_clientDied()I

    .line 108
    return-void
.end method

.method protected onFirstRegistered()V
    .locals 3

    .line 112
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->iKaraokeListener:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->registCallback(Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)I

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onLastUnregistered()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 121
    return-void
.end method
