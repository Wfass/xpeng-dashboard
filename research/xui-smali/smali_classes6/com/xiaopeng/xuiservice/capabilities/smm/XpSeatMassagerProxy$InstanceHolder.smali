.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$InstanceHolder;
.super Ljava/lang/Object;
.source "XpSeatMassagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 350
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;
    .locals 1

    .line 349
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    return-object v0
.end method
