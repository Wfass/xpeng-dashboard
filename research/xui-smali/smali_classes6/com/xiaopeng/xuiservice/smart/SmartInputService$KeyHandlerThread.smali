.class Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;
.super Landroid/os/HandlerThread;
.source "SmartInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyHandlerThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyHandlerThread"


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartInputService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartInputService;)V
    .locals 1

    .line 273
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    .line 274
    const-string p1, "KeyHandlerThread"

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 275
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onLooperPrepared()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 279
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->handler:Landroid/os/Handler;

    .line 296
    return-void
.end method
