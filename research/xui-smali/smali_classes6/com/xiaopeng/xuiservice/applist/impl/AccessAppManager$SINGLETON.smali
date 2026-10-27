.class final Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$SINGLETON;
.super Ljava/lang/Object;
.source "AccessAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SINGLETON"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$SINGLETON;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;
    .locals 1

    .line 75
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager$SINGLETON;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    return-object v0
.end method
