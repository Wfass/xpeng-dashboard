.class final Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationProviderHolder;
.super Ljava/lang/Object;
.source "LocationModuleEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationProviderHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationProviderImpl;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationProviderImpl;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationProviderHolder;->INSTANCE:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationProvider;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationProviderHolder;->INSTANCE:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationProvider;

    return-object v0
.end method
