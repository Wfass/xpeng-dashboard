.class Lcom/xiaopeng/xuimanager/access/AccessAppManager$AccessAppManagerHolder;
.super Ljava/lang/Object;
.source "AccessAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/access/AccessAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessAppManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/access/AccessAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;-><init>(Lcom/xiaopeng/xuimanager/access/AccessAppManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager$AccessAppManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/access/AccessAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/access/AccessAppManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager$AccessAppManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/access/AccessAppManager;

    return-object v0
.end method
