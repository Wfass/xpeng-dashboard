.class Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;
.super Landroid/os/HandlerThread;
.source "SmartBiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiHandlerThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BiHandlerThread"


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBiService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBiService;)V
    .locals 1

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBiService;

    .line 126
    const-string p1, "BiHandlerThread"

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 127
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onLooperPrepared()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;->handler:Landroid/os/Handler;

    .line 148
    return-void
.end method
