.class Lcom/xiaopeng/factory/utils/SharedUtils$SingleSharedUtils;
.super Ljava/lang/Object;
.source "SharedUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/SharedUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleSharedUtils"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/factory/utils/SharedUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/xiaopeng/factory/utils/SharedUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/factory/utils/SharedUtils;-><init>(Lcom/xiaopeng/factory/utils/SharedUtils$1;)V

    sput-object v0, Lcom/xiaopeng/factory/utils/SharedUtils$SingleSharedUtils;->INSTANCE:Lcom/xiaopeng/factory/utils/SharedUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/factory/utils/SharedUtils;
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaopeng/factory/utils/SharedUtils$SingleSharedUtils;->INSTANCE:Lcom/xiaopeng/factory/utils/SharedUtils;

    return-object v0
.end method
