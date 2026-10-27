.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;
.super Landroid/os/HandlerThread;
.source "SmartLluService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LluHandlerThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LluHandlerThread"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mLluPlayClass:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 1

    .line 2010
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 2011
    const-string p1, "LluHandlerThread"

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2012
    return-void
.end method

.method static synthetic access$4300(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    .line 2005
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->mLluPlayClass:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    .line 2005
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->mLluPlayClass:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    return-object p1
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 2056
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onLooperPrepared()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 2017
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->handler:Landroid/os/Handler;

    .line 2053
    return-void
.end method
