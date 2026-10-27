.class public Landroid/pso/Diagnosis;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field private static c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

.field private static d:Landroid/content/ServiceConnection;

.field private static e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/pso/Diagnosis;->a:Landroid/content/Context;

    sput-object v0, Landroid/pso/Diagnosis;->b:Lcom/xiaopeng/aftersales/AfterSalesManager;

    sput-object v0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    new-instance v0, Landroid/pso/Diagnosis$3;

    invoke-direct {v0}, Landroid/pso/Diagnosis$3;-><init>()V

    sput-object v0, Landroid/pso/Diagnosis;->d:Landroid/content/ServiceConnection;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/pso/Diagnosis;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x7
        -0x62
        -0x2
        -0xe
        -0xf
        -0x29
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaopeng/aftersales/manager/AfterSalesManager;
    .locals 1

    sget-object v0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    :try_start_0
    sget-object v0, Landroid/pso/Diagnosis;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Landroid/pso/Diagnosis;->a:Landroid/content/Context;

    :cond_0
    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    if-nez p0, :cond_1

    sget-object p0, Landroid/pso/Diagnosis;->a:Landroid/content/Context;

    sget-object v0, Landroid/pso/Diagnosis;->d:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->createAfterSalesManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    move-result-object p0

    sput-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    if-eqz p0, :cond_1

    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    invoke-virtual {p0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Diagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Diagnosis getSystemService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    :try_start_0
    sget-object v0, Landroid/pso/Diagnosis;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Landroid/pso/Diagnosis;->a:Landroid/content/Context;

    :cond_0
    sget-object v0, Landroid/pso/Diagnosis;->b:Lcom/xiaopeng/aftersales/AfterSalesManager;

    if-nez v0, :cond_1

    const-string v0, "xiaopeng_aftersales"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/aftersales/AfterSalesManager;

    sput-object p0, Landroid/pso/Diagnosis;->b:Lcom/xiaopeng/aftersales/AfterSalesManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Diagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Diagnosis getSystemService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-object p0, Landroid/pso/Diagnosis;->b:Lcom/xiaopeng/aftersales/AfterSalesManager;

    :cond_1
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/pso/Diagnosis;->b(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p0}, Landroid/pso/Diagnosis;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static isDiagnosisCode(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Landroid/pso/Diagnosis;->e:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Landroid/pso/Diagnosis;->e:[I

    aget v2, v2, v1

    if-ne v2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static recordBleDiagnosisError(ILjava/lang/String;Z)Z
    .locals 7

    add-int/lit16 v2, p0, 0x13ec

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-string v0, "Diagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Diagnosis pso ble errorCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "),errorMsg="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/pso/Diagnosis;->b:Lcom/xiaopeng/aftersales/AfterSalesManager;

    if-eqz p0, :cond_2

    sget-object v0, Landroid/pso/Diagnosis;->b:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/aftersales/AfterSalesManager;->recordDiagnosisError(IIJLjava/lang/String;Z)V

    const-string p0, "Diagnosis"

    const-string p1, "record Ble Diagnosis recorded!"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, "Diagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Diagnosis pso ble errorCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "),errorMsg="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    if-eqz p0, :cond_1

    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    invoke-virtual {p0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->isConnected()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Landroid/pso/Diagnosis$2;

    invoke-direct {v0, v2, p1, p2}, Landroid/pso/Diagnosis$2;-><init>(ILjava/lang/String;Z)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    if-eqz p0, :cond_2

    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    invoke-virtual {p0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->recordDiagnosisError(IIJLjava/lang/String;Z)V

    const-string p0, "Diagnosis"

    const-string p1, "record Ble Diagnosis recorded!"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Diagnosis"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "record Ble Diagnosis Error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static recordDiagnosisError(ILjava/lang/String;Z)Z
    .locals 7

    add-int/lit16 v2, p0, 0x157c

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-string v0, "Diagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Diagnosis pso errorCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "),errorMsg="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/pso/Diagnosis;->b:Lcom/xiaopeng/aftersales/AfterSalesManager;

    if-eqz p0, :cond_2

    sget-object v0, Landroid/pso/Diagnosis;->b:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/aftersales/AfterSalesManager;->recordDiagnosisError(IIJLjava/lang/String;Z)V

    const-string p0, "Diagnosis"

    const-string p1, "Diagnosis Error recorded!"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, "Diagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Diagnosis pso errorCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "),errorMsg="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    if-eqz p0, :cond_1

    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    invoke-virtual {p0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->isConnected()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Landroid/pso/Diagnosis$1;

    invoke-direct {v0, v2, p1, p2}, Landroid/pso/Diagnosis$1;-><init>(ILjava/lang/String;Z)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_1
    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    if-eqz p0, :cond_2

    sget-object p0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    invoke-virtual {p0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->recordDiagnosisError(IIJLjava/lang/String;Z)V

    const-string p0, "Diagnosis"

    const-string p1, "Diagnosis Error recorded!"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Diagnosis"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "record Diagnosis Error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    invoke-virtual {v0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/pso/Diagnosis;->c:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    invoke-virtual {v0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
