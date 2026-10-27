.class Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$InstanceHolder;
.super Ljava/lang/Object;
.source "XpMakeupLightProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 274
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
    .locals 1

    .line 273
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    return-object v0
.end method
