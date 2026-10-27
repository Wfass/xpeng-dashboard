.class Lcom/xiaopeng/carcontrol/model/XngpExamModel$LazyHolder;
.super Ljava/lang/Object;
.source "XngpExamModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/model/XngpExamModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/model/XngpExamModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/xiaopeng/carcontrol/model/XngpExamModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/model/XngpExamModel;-><init>(Lcom/xiaopeng/carcontrol/model/XngpExamModel$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/model/XngpExamModel$LazyHolder;->sInstance:Lcom/xiaopeng/carcontrol/model/XngpExamModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/model/XngpExamModel;
    .locals 1

    .line 13
    sget-object v0, Lcom/xiaopeng/carcontrol/model/XngpExamModel$LazyHolder;->sInstance:Lcom/xiaopeng/carcontrol/model/XngpExamModel;

    return-object v0
.end method
