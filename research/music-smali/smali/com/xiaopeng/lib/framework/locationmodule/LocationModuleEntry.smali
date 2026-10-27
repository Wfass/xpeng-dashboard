.class public Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry;
.super Ljava/lang/Object;
.source "LocationModuleEntry.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/module/IModuleEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationProviderHolder;,
        Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationConsumerHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 10
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationProvider;

    if-ne p1, v0, :cond_0

    .line 11
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationProviderHolder;->access$000()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationProvider;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;

    if-ne p1, v0, :cond_1

    .line 13
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry$LocationConsumerHolder;->access$100()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
