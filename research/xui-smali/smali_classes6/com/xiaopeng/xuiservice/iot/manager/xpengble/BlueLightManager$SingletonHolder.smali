.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$SingletonHolder;
.super Ljava/lang/Object;
.source "BlueLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 351
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;
    .locals 1

    .line 350
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    return-object v0
.end method
