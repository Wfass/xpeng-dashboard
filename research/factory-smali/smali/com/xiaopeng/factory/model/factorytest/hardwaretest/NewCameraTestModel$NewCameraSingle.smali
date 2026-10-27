.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$NewCameraSingle;
.super Ljava/lang/Object;
.source "NewCameraTestModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewCameraSingle"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 204
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;)V

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$NewCameraSingle;->INSTANCE:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;
    .locals 1

    .line 203
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$NewCameraSingle;->INSTANCE:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    return-object v0
.end method
