.class Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTopAppChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 74
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 76
    .local v1, "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->access$102(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    const-string v0, "VideoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLatestTargetApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->access$100(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 81
    .end local v1    # "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method
