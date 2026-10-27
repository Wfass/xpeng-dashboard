.class Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption$SingletonHolder;
.super Ljava/lang/Object;
.source "BaseFeatureOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;->access$000()Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;

    return-object v0
.end method
