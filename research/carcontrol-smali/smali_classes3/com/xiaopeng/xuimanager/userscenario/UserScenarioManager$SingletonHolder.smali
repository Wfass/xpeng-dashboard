.class Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$SingletonHolder;
.super Ljava/lang/Object;
.source "UserScenarioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 741
    new-instance v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;-><init>(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;
    .locals 1

    .line 740
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    return-object v0
.end method
