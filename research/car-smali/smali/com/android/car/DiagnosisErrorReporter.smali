.class public Lcom/android/car/DiagnosisErrorReporter;
.super Ljava/lang/Object;
.source "DiagnosisErrorReporter.java"


# static fields
.field private static final CARSERVICE_ERROR_AUTOPILOT_REGISTER_PROPERTIES_FAILED:I = 0x36b2

.field private static final CARSERVICE_ERROR_ICM_NOT_CONNECTED:I = 0x36b1

.field private static final CARSERVICE_ERROR_TBOX_NOT_CONNECTED:I = 0x36b0

.field private static final FIRST_CARSERVICE_ERROR:I = 0x36b0

.field private static final TAG:Ljava/lang/String; = "DiagnosisErrorReporter"

.field private static final sErrorDescription:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAfterSalesManager:Lcom/xiaopeng/aftersales/AfterSalesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/car/DiagnosisErrorReporter;->sErrorDescription:Landroid/util/SparseArray;

    .line 22
    sget-object v0, Lcom/android/car/DiagnosisErrorReporter;->sErrorDescription:Landroid/util/SparseArray;

    const-string v1, "Connect TBOX timeout"

    const/16 v2, 0x36b0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/android/car/DiagnosisErrorReporter;->sErrorDescription:Landroid/util/SparseArray;

    const-string v1, "Connect ICM timeout"

    const/16 v2, 0x36b1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/android/car/DiagnosisErrorReporter;->sErrorDescription:Landroid/util/SparseArray;

    const-string v1, "Autopilot register properties callback failed: "

    const/16 v2, 0x36b2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "xiaopeng_aftersales"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object v0, p0, Lcom/android/car/DiagnosisErrorReporter;->mAfterSalesManager:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 33
    return-void
.end method

.method private recordDiagnosisError(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "alert"    # Z

    .line 36
    iget-object v0, p0, Lcom/android/car/DiagnosisErrorReporter;->mAfterSalesManager:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 36
    const/16 v1, 0xe

    move v2, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/aftersales/AfterSalesManager;->recordDiagnosisError(IIJLjava/lang/String;Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public reportAutopilotRegisterPropertiesFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/car/DiagnosisErrorReporter;->sErrorDescription:Landroid/util/SparseArray;

    .line 54
    const/16 v2, 0x36b2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    const/4 v1, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/car/DiagnosisErrorReporter;->recordDiagnosisError(ILjava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public reportIcmNotConnected()V
    .locals 3

    .line 41
    const-string v0, "DiagnosisErrorReporter"

    const-string v1, "Connect ICM timeout"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v0, Lcom/android/car/DiagnosisErrorReporter;->sErrorDescription:Landroid/util/SparseArray;

    .line 43
    const/16 v1, 0x36b1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/car/DiagnosisErrorReporter;->recordDiagnosisError(ILjava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public reportTboxNotConnected()V
    .locals 3

    .line 47
    const-string v0, "DiagnosisErrorReporter"

    const-string v1, "Connect TBOX timeout"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Lcom/android/car/DiagnosisErrorReporter;->sErrorDescription:Landroid/util/SparseArray;

    .line 49
    const/16 v1, 0x36b0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/car/DiagnosisErrorReporter;->recordDiagnosisError(ILjava/lang/String;Z)V

    .line 50
    return-void
.end method
