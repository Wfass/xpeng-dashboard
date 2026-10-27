.class final Lcom/xiaopeng/carcontrol/model/DataSyncModel$SingleHolder;
.super Ljava/lang/Object;
.source "DataSyncModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/model/DataSyncModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/model/DataSyncModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 280
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DataSyncModelFactory;->createInstance()Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/model/DataSyncModel;
    .locals 1

    .line 279
    sget-object v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    return-object v0
.end method
