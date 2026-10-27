.class final Lcom/xiaopeng/lib/framework/account/AccountProxyFactory$Holder;
.super Ljava/lang/Object;
.source "AccountProxyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;-><init>(Lcom/xiaopeng/lib/framework/account/AccountProxyFactory$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/AccountProxyFactory$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountProxyFactory$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;

    return-object v0
.end method
