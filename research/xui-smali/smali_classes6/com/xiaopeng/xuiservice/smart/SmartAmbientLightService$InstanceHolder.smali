.class Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$InstanceHolder;
.super Ljava/lang/Object;
.source "SmartAmbientLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 900
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2200()Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .locals 1

    .line 899
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    return-object v0
.end method
