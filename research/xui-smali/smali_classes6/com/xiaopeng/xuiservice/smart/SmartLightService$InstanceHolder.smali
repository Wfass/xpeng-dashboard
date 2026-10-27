.class Lcom/xiaopeng/xuiservice/smart/SmartLightService$InstanceHolder;
.super Ljava/lang/Object;
.source "SmartLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/smart/SmartLightService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 532
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 533
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 532
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3500()Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .locals 1

    .line 531
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    return-object v0
.end method
