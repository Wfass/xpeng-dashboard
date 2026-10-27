.class public Lcom/xiaopeng/xuiservice/operation/OperationActivityService;
.super Ljava/lang/Object;
.source "OperationActivityService.java"


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/operation/OperationActivityService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationActivityService$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/OperationActivityService$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/OperationActivityService;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationActivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationActivityService$1;

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationActivityService;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/OperationActivityService;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/OperationActivityService;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/OperationActivityService;

    return-object v0
.end method


# virtual methods
.method public handleUserSwitch(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .line 24
    return-void
.end method
