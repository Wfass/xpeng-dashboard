.class final Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationConsumerHolder;
.super Ljava/lang/Object;
.source "LocationModuleEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationConsumerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationConsumerHolder;->INSTANCE:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationConsumerHolder;->INSTANCE:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;

    return-object v0
.end method
