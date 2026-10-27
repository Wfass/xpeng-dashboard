.class Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "SpeechHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static sInstance:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;-><init>(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
