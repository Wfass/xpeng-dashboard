.class Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$1;
.super Ljava/lang/Object;
.source "ScreenCalibrationModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;->getCalibrationResult(Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;

.field final synthetic val$callback:Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$1;->val$callback:Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v1, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/bus/i2c/devices/1-0024/mfg_test/calibrate"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "string":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 42
    :cond_0
    const-string v3, "ScreenCalibrationModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCalibrationResult value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$1;->val$callback:Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v2    # "string":Ljava/lang/String;
    nop

    .line 50
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    :goto_1
    goto :goto_2

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 44
    :catch_1
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$1;->val$callback:Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;->onFail(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 50
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 56
    :cond_1
    :goto_2
    return-void

    .line 48
    :goto_3
    if-eqz v0, :cond_2

    .line 50
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 53
    goto :goto_4

    .line 51
    :catch_2
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v2
.end method
