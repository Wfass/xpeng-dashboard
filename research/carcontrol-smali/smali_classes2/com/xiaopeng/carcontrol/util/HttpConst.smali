.class public Lcom/xiaopeng/carcontrol/util/HttpConst;
.super Ljava/lang/Object;
.source "HttpConst.java"


# static fields
.field public static final DEFAULT_VALUE_SERVICE_ENV:I = 0x3

.field public static final ENV_PRE:I = 0x2

.field public static final ENV_PRODUCT:I = 0x3

.field public static final ENV_TEST:I = 0x1

.field public static final SERVICE_CHECK_CAR:I = 0x10

.field public static final XP_SELFCHECK_PRE:Ljava/lang/String; = "https://xmart.deploy-test.xiaopeng.com/flow/cv2/vehicle/selfCheck"

.field public static final XP_SELFCHECK_PRODUCT:Ljava/lang/String; = "https://xmart.xiaopeng.com/flow/cv2/vehicle/selfCheck"

.field public static final XP_SELFCHECK_TEST:Ljava/lang/String; = "https://10.0.13.28:8553/flow/cv2/vehicle/selfCheck"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
