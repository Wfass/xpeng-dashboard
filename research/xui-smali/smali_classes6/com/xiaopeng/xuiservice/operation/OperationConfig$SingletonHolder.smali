.class Lcom/xiaopeng/xuiservice/operation/OperationConfig$SingletonHolder;
.super Ljava/lang/Object;
.source "OperationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static INSTANCE:Lcom/xiaopeng/xuiservice/operation/OperationConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationConfig$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/OperationConfig$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/OperationConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
