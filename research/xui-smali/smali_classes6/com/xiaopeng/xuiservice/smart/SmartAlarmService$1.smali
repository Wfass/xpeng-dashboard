.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;
.super Landroid/database/ContentObserver;
.source "SmartAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 144
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Z

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$302(Z)Z

    .line 147
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSimpleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method
