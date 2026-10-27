.class Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "XuiAlsaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer$1;->this$0:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBinderDied(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onBinderDied(Landroid/os/IBinder;)V

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer$1;->this$0:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->access$000(Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer$1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
