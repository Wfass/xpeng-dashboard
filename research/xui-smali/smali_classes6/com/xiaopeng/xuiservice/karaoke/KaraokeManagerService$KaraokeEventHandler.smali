.class final Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "KaraokeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KaraokeEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 1032
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    .line 1033
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1038
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1039
    .local v0, "event":I
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "callingPackage":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .end local v0    # "event":I
    .end local v1    # "callingPackage":Ljava/lang/String;
    goto :goto_1

    .line 1042
    .restart local v0    # "event":I
    .restart local v1    # "callingPackage":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x4

    const/4 v4, 0x2

    if-ne v0, v2, :cond_1

    .line 1043
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1502(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Z)Z

    .line 1044
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1700(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1602(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;I)I

    .line 1045
    sget v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_MIC_RESTRICTION:I

    if-ne v2, v4, :cond_3

    .line 1046
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1800(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    :cond_1
    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 1049
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1900(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)I

    goto :goto_0

    .line 1051
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1502(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Z)Z

    .line 1052
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1602(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;I)I

    .line 1053
    sget v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_MIC_RESTRICTION:I

    if-ne v2, v4, :cond_3

    .line 1054
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    const v5, 0xbb80

    invoke-virtual {v3, v1, v5, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_MicGetMinBuf(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {v2, v1, v5, v4, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_requestKaraokeResource(Ljava/lang/String;III)I

    .line 1057
    :cond_3
    :goto_0
    const-string v2, "KaraokeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KARAOKE_EVENT  handleMessage  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dongleStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1500(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dispatchKaraokeCallback(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    .end local v0    # "event":I
    .end local v1    # "callingPackage":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1064
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
