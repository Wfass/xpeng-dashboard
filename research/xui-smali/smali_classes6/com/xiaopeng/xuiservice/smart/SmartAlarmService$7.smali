.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$7;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

.field final synthetic val$signals:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 1321
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$7;->val$signals:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternalCommonEvent(II)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "eventValue"    # I

    .line 1324
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$7;->val$signals:Landroid/util/ArrayMap;

    const v2, 0xbc6151    # 1.7299984E-38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    invoke-static {v0, v1, v2, p2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    .line 1327
    :cond_0
    return-void
.end method
