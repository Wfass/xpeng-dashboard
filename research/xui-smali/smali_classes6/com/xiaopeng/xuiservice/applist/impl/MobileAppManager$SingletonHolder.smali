.class Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$SingletonHolder;
.super Ljava/lang/Object;
.source "MobileAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 119
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;
    .locals 1

    .line 118
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    return-object v0
.end method
