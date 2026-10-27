.class final Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$Holder;
.super Ljava/lang/Object;
.source "AccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;-><init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    return-object v0
.end method
