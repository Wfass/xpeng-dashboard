.class final Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$Holder;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;-><init>(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    return-object v0
.end method
