.class Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$ThirdAppManagerHolder;
.super Ljava/lang/Object;
.source "ThirdAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThirdAppManagerHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 168
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$ThirdAppManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;
    .locals 1

    .line 167
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$ThirdAppManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    return-object v0
.end method
