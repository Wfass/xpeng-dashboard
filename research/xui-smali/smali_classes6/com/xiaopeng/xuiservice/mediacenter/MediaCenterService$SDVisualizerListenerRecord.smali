.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;
.super Ljava/lang/Object;
.source "MediaCenterService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SDVisualizerListenerRecord"
.end annotation


# instance fields
.field public final displayId:I

.field public final listener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

.field public final pid:I

.field public final pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;ILjava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;
    .param p2, "displayId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    .line 906
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    .line 908
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    .line 909
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    .line 910
    iput p5, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pid:I

    .line 911
    iput p6, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->uid:I

    .line 912
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 938
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 939
    monitor-exit v0

    .line 940
    return-void

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFftDataCapture(ILjava/lang/String;[BI)V
    .locals 1
    .param p1, "display"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "fft"    # [B
    .param p4, "samplingRate"    # I

    .line 916
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->OnFftDataCapture(ILjava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    goto :goto_0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 923
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onRatioData(ILjava/lang/String;FF)V
    .locals 1
    .param p1, "display"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 926
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->displayId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$SDVisualizerListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->OnRatioData(ILjava/lang/String;FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 933
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
