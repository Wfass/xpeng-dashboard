.class Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$SINGLETON_HOLDER;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SINGLETON_HOLDER"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;-><init>(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$SINGLETON_HOLDER;->INSTANCE:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;
    .locals 1

    .line 94
    sget-object v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$SINGLETON_HOLDER;->INSTANCE:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    return-object v0
.end method
