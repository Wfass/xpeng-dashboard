.class Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;
.super Ljava/lang/Object;
.source "AccountProxyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/account/AccountProxyFactory$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/account/AccountProxyFactory$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/AccountProxyFactory$Holder;->access$100()Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getProxy()Lcom/xiaopeng/lib/framework/account/IAccountProxy;
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 26
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->getInstance()Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->getInstance()Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    move-result-object v0

    return-object v0
.end method
