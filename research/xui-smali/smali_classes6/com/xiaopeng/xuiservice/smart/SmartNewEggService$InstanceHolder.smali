.class Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$InstanceHolder;
.super Ljava/lang/Object;
.source "SmartNewEggService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 621
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    .line 622
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    .line 621
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700()Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;
    .locals 1

    .line 620
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    return-object v0
.end method
