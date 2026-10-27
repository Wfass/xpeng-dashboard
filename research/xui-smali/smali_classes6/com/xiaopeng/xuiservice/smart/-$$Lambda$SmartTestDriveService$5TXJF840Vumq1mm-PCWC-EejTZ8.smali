.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5TXJF840Vumq1mm-PCWC-EejTZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5TXJF840Vumq1mm-PCWC-EejTZ8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5TXJF840Vumq1mm-PCWC-EejTZ8;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5TXJF840Vumq1mm-PCWC-EejTZ8;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5TXJF840Vumq1mm-PCWC-EejTZ8;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5TXJF840Vumq1mm-PCWC-EejTZ8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->lambda$getSaleName$0(Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
