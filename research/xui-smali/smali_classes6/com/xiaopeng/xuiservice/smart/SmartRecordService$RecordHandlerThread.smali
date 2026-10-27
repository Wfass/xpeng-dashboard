.class Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;
.super Landroid/os/HandlerThread;
.source "SmartRecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordHandlerThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordHandlerThread"


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)V
    .locals 1

    .line 257
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    .line 258
    const-string p1, "RecordHandlerThread"

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 259
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onLooperPrepared()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->handler:Landroid/os/Handler;

    .line 281
    return-void
.end method
