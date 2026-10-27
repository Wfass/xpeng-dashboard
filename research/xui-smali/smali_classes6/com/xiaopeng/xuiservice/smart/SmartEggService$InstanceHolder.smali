.class Lcom/xiaopeng/xuiservice/smart/SmartEggService$InstanceHolder;
.super Ljava/lang/Object;
.source "SmartEggService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartEggService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/smart/SmartEggService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 342
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900()Lcom/xiaopeng/xuiservice/smart/SmartEggService;
    .locals 1

    .line 341
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    return-object v0
.end method
