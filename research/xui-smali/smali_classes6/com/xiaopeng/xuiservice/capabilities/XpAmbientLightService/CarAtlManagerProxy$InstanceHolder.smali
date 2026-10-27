.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy$InstanceHolder;
.super Ljava/lang/Object;
.source "CarAtlManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 157
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;
    .locals 1

    .line 156
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;

    return-object v0
.end method
