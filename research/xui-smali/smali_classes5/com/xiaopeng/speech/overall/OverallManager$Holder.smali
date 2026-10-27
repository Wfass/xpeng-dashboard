.class Lcom/xiaopeng/speech/overall/OverallManager$Holder;
.super Ljava/lang/Object;
.source "OverallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/overall/OverallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final Instance:Lcom/xiaopeng/speech/overall/OverallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 169
    new-instance v0, Lcom/xiaopeng/speech/overall/OverallManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;-><init>(Lcom/xiaopeng/speech/overall/OverallManager$1;)V

    sput-object v0, Lcom/xiaopeng/speech/overall/OverallManager$Holder;->Instance:Lcom/xiaopeng/speech/overall/OverallManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/speech/overall/OverallManager;
    .locals 1

    .line 168
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallManager$Holder;->Instance:Lcom/xiaopeng/speech/overall/OverallManager;

    return-object v0
.end method
