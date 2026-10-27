.class Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$SingletonHolder;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;-><init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$1;)V

    sput-object v0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$SingletonHolder;->INSTANCE:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$SingletonHolder;->INSTANCE:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    return-object v0
.end method
