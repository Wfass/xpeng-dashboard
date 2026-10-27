.class Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;
.super Ljava/lang/Object;
.source "XAppManagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 1057
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTopAppChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 1060
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1061
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

    .line 1062
    .local v1, "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setXpPackageInfo(Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 1063
    const-string v2, "secondary"

    .line 1064
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getAreaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1065
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v3

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1400(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;ILcom/xiaopeng/app/xpPackageInfo;)V

    .line 1067
    .end local v1    # "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1500(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1070
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$300(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    .line 1071
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1600(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V

    .line 1072
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1700(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1073
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1700(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/xapp/bi/XAppBIHandler;->topAppChanged(ILcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V

    .line 1075
    :cond_2
    return-void
.end method
