.class public Lcom/xiaopeng/xuiservice/operation/CommonResourceService;
.super Ljava/lang/Object;
.source "CommonResourceService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/CommonResourceService$SingletonHolder;
    }
.end annotation


# static fields
.field private static final COMMON_RESOURCE_TYPE:I = 0x107d7c

.field private static final TAG:Ljava/lang/String; = "CommonResourceService"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/CommonResourceService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/CommonResourceService$1;

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/CommonResourceService;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/CommonResourceService;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/CommonResourceService$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/CommonResourceService;

    return-object v0
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/operation/CommonResourceService;)V
    .locals 2

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    const v1, 0x107d7c

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->setAutoSync(I)V

    .line 42
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/CommonResourceService$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/operation/CommonResourceService$1;-><init>(Lcom/xiaopeng/xuiservice/operation/CommonResourceService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 84
    return-void
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "CommonResourceService"

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 39
    const-string v0, "CommonResourceService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$CommonResourceService$VVBPflg407qA2IYfAxKsjNc6jXQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$CommonResourceService$VVBPflg407qA2IYfAxKsjNc6jXQ;-><init>(Lcom/xiaopeng/xuiservice/operation/CommonResourceService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public release()V
    .locals 2

    .line 78
    const-string v0, "CommonResourceService"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
