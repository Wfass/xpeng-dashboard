.class Lcom/xiaopeng/xuiservice/bluetooth/GattManager$GattManagerHolder;
.super Ljava/lang/Object;
.source "GattManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GattManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattManager;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager$GattManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/bluetooth/GattManager;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/xuiservice/bluetooth/GattManager$GattManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/bluetooth/GattManager;

    return-object v0
.end method
