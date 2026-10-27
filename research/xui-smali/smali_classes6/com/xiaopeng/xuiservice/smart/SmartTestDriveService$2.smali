.class Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;
.super Landroid/database/ContentObserver;
.source "SmartTestDriveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$302(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_IDLE:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$402(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    .line 129
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)I

    move-result v0

    .line 122
    .local v0, "driveMode":I
    const-string v1, "SmartTestDriveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", driveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$102(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$2$zcrC92kdDiFKN0zgK0H6iRbrVIM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$2$zcrC92kdDiFKN0zgK0H6iRbrVIM;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_1
    return-void
.end method
