.class Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$2;
.super Ljava/lang/Object;
.source "ScreenCalibrationModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;->setCalibration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$2;->this$0:Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/bus/i2c/devices/1-0024/mfg_test/calibrate"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 68
    const-string v1, "0,1"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    nop

    .line 74
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 75
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 69
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 74
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 75
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    return-void

    .line 72
    :goto_2
    if-eqz v0, :cond_1

    .line 74
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 75
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 78
    goto :goto_3

    .line 76
    :catch_2
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v1
.end method
