.class Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$SingletonHolder;
.super Ljava/lang/Object;
.source "MakeupLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;-><init>(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;

    return-object v0
.end method
