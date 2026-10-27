.class Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$ChildSeatManagerHolder;
.super Ljava/lang/Object;
.source "ChildSeatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildSeatManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 408
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$ChildSeatManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200()Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;
    .locals 1

    .line 407
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$ChildSeatManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    return-object v0
.end method
