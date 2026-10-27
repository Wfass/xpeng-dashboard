.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;
.super Ljava/lang/Object;
.source "NewCameraTestModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->switchCameraType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    iput p2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, "writer":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/ds90ub954a/channel"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;->val$type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    nop

    .line 64
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 59
    :catch_1
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "NewCameraTestModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 64
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    :goto_1
    goto :goto_2

    .line 65
    :catch_2
    move-exception v2

    goto :goto_0

    .line 70
    .end local v1    # "writer":Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 71
    return-void

    .line 62
    .restart local v1    # "writer":Ljava/io/OutputStreamWriter;
    :goto_3
    if-eqz v1, :cond_1

    .line 64
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 67
    goto :goto_4

    .line 70
    .end local v1    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 65
    .restart local v1    # "writer":Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v3

    .line 66
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 67
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v2

    .line 70
    .end local v1    # "writer":Ljava/io/OutputStreamWriter;
    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method
