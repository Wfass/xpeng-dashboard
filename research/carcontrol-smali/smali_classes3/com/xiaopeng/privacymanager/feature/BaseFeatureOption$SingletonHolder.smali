.class Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption$SingletonHolder;
.super Ljava/lang/Object;
.source "BaseFeatureOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;->access$000()Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption$SingletonHolder;->sInstance:Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;
    .locals 1

    .line 11
    sget-object v0, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption$SingletonHolder;->sInstance:Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;

    return-object v0
.end method
