.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$InstanceHolder;
.super Ljava/lang/Object;
.source "XpLightlanuageProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 881
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;
    .locals 1

    .line 880
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    return-object v0
.end method
