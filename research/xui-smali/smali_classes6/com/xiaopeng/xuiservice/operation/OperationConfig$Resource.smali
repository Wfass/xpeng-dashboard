.class Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
.super Ljava/lang/Object;
.source "OperationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resource"
.end annotation


# instance fields
.field private encrypted:Z

.field private path:Ljava/lang/String;

.field private type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationConfig$1;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->type:I

    return v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->type:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->encrypted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->encrypted:Z

    return p1
.end method
