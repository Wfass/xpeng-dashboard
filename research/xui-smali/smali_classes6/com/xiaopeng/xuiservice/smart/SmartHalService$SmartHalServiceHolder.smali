.class Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalServiceHolder;
.super Ljava/lang/Object;
.source "SmartHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartHalServiceHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/xiaopeng/xuiservice/smart/SmartHalService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartHalService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalServiceHolder;->sInstance:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
