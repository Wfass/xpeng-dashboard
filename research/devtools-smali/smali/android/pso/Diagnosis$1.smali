.class final Landroid/pso/Diagnosis$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/pso/Diagnosis;->recordDiagnosisError(ILjava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    iput p1, p0, Landroid/pso/Diagnosis$1;->a:I

    iput-object p2, p0, Landroid/pso/Diagnosis$1;->b:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/pso/Diagnosis$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/pso/Diagnosis;->a()Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/pso/Diagnosis;->a()Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/pso/Diagnosis;->a()Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    move-result-object v1

    const/4 v2, 0x5

    iget v3, p0, Landroid/pso/Diagnosis$1;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroid/pso/Diagnosis$1;->b:Ljava/lang/String;

    iget-boolean v7, p0, Landroid/pso/Diagnosis$1;->c:Z

    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->recordDiagnosisError(IIJLjava/lang/String;Z)V

    const-string v0, "Diagnosis"

    const-string v1, "Diagnosis Error recorded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
