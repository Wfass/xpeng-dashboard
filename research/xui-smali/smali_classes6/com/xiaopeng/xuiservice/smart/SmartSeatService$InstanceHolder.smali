.class Lcom/xiaopeng/xuiservice/smart/SmartSeatService$InstanceHolder;
.super Ljava/lang/Object;
.source "SmartSeatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartSeatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/smart/SmartSeatService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

    .line 122
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

    .line 121
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/smart/SmartSeatService;
    .locals 1

    .line 120
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

    return-object v0
.end method
