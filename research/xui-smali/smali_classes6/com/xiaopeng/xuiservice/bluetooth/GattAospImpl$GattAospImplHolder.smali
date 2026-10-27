.class Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattAospImplHolder;
.super Ljava/lang/Object;
.source "GattAospImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GattAospImplHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    new-instance v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattAospImplHolder;->sInstance:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
    .locals 1

    .line 123
    sget-object v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattAospImplHolder;->sInstance:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    return-object v0
.end method
