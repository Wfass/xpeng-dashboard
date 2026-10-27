.class Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$ChildSaftySeatManagerHolder;
.super Ljava/lang/Object;
.source "ChildSaftySeatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildSaftySeatManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$ChildSaftySeatManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;
    .locals 1

    .line 82
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager$ChildSaftySeatManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    return-object v0
.end method
