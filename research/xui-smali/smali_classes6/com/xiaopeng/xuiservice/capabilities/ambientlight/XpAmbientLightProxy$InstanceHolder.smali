.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$InstanceHolder;
.super Ljava/lang/Object;
.source "XpAmbientLightProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 452
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;
    .locals 1

    .line 451
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;

    return-object v0
.end method
