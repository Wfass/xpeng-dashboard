.class Lcom/xiaopeng/carcontrol/model/DebugFuncModel$LazyHolder;
.super Ljava/lang/Object;
.source "DebugFuncModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/model/DebugFuncModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/model/DebugFuncModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;-><init>(Lcom/xiaopeng/carcontrol/model/DebugFuncModel$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel$LazyHolder;->sInstance:Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel$LazyHolder;->sInstance:Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    return-object v0
.end method
