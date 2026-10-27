.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$InstanceHolder;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1593
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 1594
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 1593
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4300()Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .locals 1

    .line 1592
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    return-object v0
.end method
