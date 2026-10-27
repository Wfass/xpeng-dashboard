.class Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$CarRebootManagerHolder;
.super Ljava/lang/Object;
.source "CarRebootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarRebootManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$CarRebootManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1300()Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$CarRebootManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    return-object v0
.end method
