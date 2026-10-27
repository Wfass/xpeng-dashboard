.class Lcom/xiaopeng/unity/AppManager$SingleHolder;
.super Ljava/lang/Object;
.source "AppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/unity/AppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/xiaopeng/unity/AppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/AppManager;-><init>(Lcom/xiaopeng/unity/AppManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/AppManager$SingleHolder;->instance:Lcom/xiaopeng/unity/AppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/AppManager;
    .locals 1

    .line 72
    sget-object v0, Lcom/xiaopeng/unity/AppManager$SingleHolder;->instance:Lcom/xiaopeng/unity/AppManager;

    return-object v0
.end method
