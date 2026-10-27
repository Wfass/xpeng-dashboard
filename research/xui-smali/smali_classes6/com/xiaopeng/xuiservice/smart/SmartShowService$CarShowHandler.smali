.class public Lcom/xiaopeng/xuiservice/smart/SmartShowService$CarShowHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "SmartShowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartShowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarShowHandler"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartShowService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartShowService;
    .param p2, "context"    # Landroid/content/Context;

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$CarShowHandler;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$CarShowHandler;->context:Landroid/content/Context;

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 201
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->handleMessage(Landroid/os/Message;)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$CarShowHandler;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method
