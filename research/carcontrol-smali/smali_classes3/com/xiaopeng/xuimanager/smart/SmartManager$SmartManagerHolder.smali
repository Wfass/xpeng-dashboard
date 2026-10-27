.class Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartManagerHolder;
.super Ljava/lang/Object;
.source "SmartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/smart/SmartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/smart/SmartManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 230
    new-instance v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;-><init>(Lcom/xiaopeng/xuimanager/smart/SmartManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/smart/SmartManager;
    .locals 1

    .line 229
    sget-object v0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    return-object v0
.end method
