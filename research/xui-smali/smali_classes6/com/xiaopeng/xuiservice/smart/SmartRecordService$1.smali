.class Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;
.super Landroid/database/ContentObserver;
.source "SmartRecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->micRecordReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 91
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->handleRecorderEvent(I)V

    .line 93
    return-void
.end method
