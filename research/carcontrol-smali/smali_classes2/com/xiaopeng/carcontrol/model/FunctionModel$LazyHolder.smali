.class Lcom/xiaopeng/carcontrol/model/FunctionModel$LazyHolder;
.super Ljava/lang/Object;
.source "FunctionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/model/FunctionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/model/FunctionModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    new-instance v0, Lcom/xiaopeng/carcontrol/model/FunctionModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;-><init>(Lcom/xiaopeng/carcontrol/model/FunctionModel$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/model/FunctionModel$LazyHolder;->sInstance:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/model/FunctionModel;
    .locals 1

    .line 116
    sget-object v0, Lcom/xiaopeng/carcontrol/model/FunctionModel$LazyHolder;->sInstance:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    return-object v0
.end method
