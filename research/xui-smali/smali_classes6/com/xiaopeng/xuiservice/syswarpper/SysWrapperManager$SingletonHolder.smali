.class Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager$SingletonHolder;
.super Ljava/lang/Object;
.source "SysWrapperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;

    return-object v0
.end method
