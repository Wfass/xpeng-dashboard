.class final Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$Holder;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    return-object v0
.end method
