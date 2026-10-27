.class Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert$ChildSeatAlertHolder;
.super Ljava/lang/Object;
.source "ChildSeatAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildSeatAlertHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert$ChildSeatAlertHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert$ChildSeatAlertHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;

    return-object v0
.end method
