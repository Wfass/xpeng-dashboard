.class Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$1;
.super Ljava/lang/Object;
.source "SmartTestDriveService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V
    .locals 3
    .param p1, "naviStatus"    # Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;
    .param p2, "msgType"    # I

    .line 71
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviStatus, naviStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;->getNaviStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
