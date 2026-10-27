.class Lcom/xiaopeng/carcontrol/model/MemParkExamModel$LazyHolder;
.super Ljava/lang/Object;
.source "MemParkExamModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/model/MemParkExamModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/model/MemParkExamModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/xiaopeng/carcontrol/model/MemParkExamModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/model/MemParkExamModel;-><init>(Lcom/xiaopeng/carcontrol/model/MemParkExamModel$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/model/MemParkExamModel$LazyHolder;->sInstance:Lcom/xiaopeng/carcontrol/model/MemParkExamModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/model/MemParkExamModel;
    .locals 1

    .line 13
    sget-object v0, Lcom/xiaopeng/carcontrol/model/MemParkExamModel$LazyHolder;->sInstance:Lcom/xiaopeng/carcontrol/model/MemParkExamModel;

    return-object v0
.end method
