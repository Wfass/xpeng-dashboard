.class public Lcom/xiaopeng/commonfunc/utils/TestResultUtil;
.super Ljava/lang/Object;
.source "TestResultUtil.java"


# static fields
.field private static final AGING_TEST_INIT_VALUE:Ljava/lang/String; = "0,0 "

.field private static final AGING_TEST_RECORD_CNT:I = 0x3

.field public static final AGING_TEST_RECORD_SIZE:I = 0x4

.field public static final PATH_AGING_TEST_RECORD:Ljava/lang/String; = "/mnt/vendor/private/factory/aging_test_record"

.field public static final PATH_TEST_RESULT:Ljava/lang/String; = "/mnt/vendor/private/factory/test_result"

.field private static final TAG:Ljava/lang/String; = "TestResultUtil"

.field private static final TEST_RESULT_CNT:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAgingTestResultFile()Z
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 109
    const-string v2, "0,0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_0
    const-string v1, "/mnt/vendor/private/factory/aging_test_record"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static createTestResultFile(B)Z
    .locals 3
    .param p0, "initValue"    # B

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_0

    .line 28
    new-instance v2, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResultItem;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResultItem;-><init>(IB)V

    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResultItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "i":I
    :cond_0
    const-string v1, "/mnt/vendor/private/factory/test_result"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static increaseAgingTestRecord(I)Z
    .locals 6
    .param p0, "index"    # I

    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "out":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/private/factory/aging_test_record"

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 121
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 122
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 123
    .local v2, "value":I
    int-to-long v3, p0

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 124
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    .line 125
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IncreaseAgingTestRecord path: /mnt/vendor/private/factory/aging_test_record, index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " value ascii: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    nop

    .line 133
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    .end local v2    # "value":I
    .end local p0    # "index":I
    :goto_0
    return v1

    .line 137
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "value":I
    .restart local p0    # "index":I
    :goto_1
    nop

    .line 136
    nop

    .line 139
    const/4 v1, 0x1

    return v1

    .line 131
    .end local v2    # "value":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 127
    :catch_1
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IncreaseAgingTestRecord Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    nop

    .line 132
    if-eqz v0, :cond_0

    .line 133
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 137
    :cond_0
    nop

    .line 129
    return v1

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 132
    if-eqz v0, :cond_1

    .line 133
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 135
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 137
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 136
    throw v2
.end method

.method public static readAgingTestRecord(I)I
    .locals 6
    .param p0, "index"    # I

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "value":I
    const/4 v1, 0x0

    .line 152
    .local v1, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/private/factory/aging_test_record"

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 153
    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    add-int/lit8 v0, v2, -0x30

    .line 155
    const-string v2, "TestResultUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAgingTestRecord path: /mnt/vendor/private/factory/aging_test_record, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    nop

    .line 161
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :goto_0
    goto :goto_2

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v5, "readAgingTestRecord IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 159
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 156
    :catch_1
    move-exception v2

    .line 157
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAgingTestRecord IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 161
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 162
    :catch_2
    move-exception v2

    .line 163
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return v0

    .line 159
    :goto_3
    if-eqz v1, :cond_1

    .line 161
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 164
    goto :goto_4

    .line 162
    :catch_3
    move-exception v3

    .line 163
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAgingTestRecord IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TestResultUtil"

    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v2
.end method

.method public static readAgingTestRecord()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, "/mnt/vendor/private/factory/aging_test_record"

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readTestResult(I)B
    .locals 6
    .param p0, "index"    # I

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "value":B
    const/4 v1, 0x0

    .line 64
    .local v1, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/private/factory/test_result"

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 65
    add-int/lit8 v2, p0, -0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 66
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    move v0, v2

    .line 67
    const-string v2, "TestResultUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readTestResult path: /mnt/vendor/private/factory/test_result, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    nop

    .line 73
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :goto_0
    goto :goto_2

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v5, "readTestResult IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 68
    :catch_1
    move-exception v2

    .line 69
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readTestResult IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 73
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 74
    :catch_2
    move-exception v2

    .line 75
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 79
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return v0

    .line 71
    :goto_3
    if-eqz v1, :cond_1

    .line 73
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 76
    goto :goto_4

    .line 74
    :catch_3
    move-exception v3

    .line 75
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readTestResult IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TestResultUtil"

    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v2
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "value":B
    const-string v1, "P"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/16 v0, 0x50

    goto :goto_0

    .line 86
    :cond_0
    const-string v1, "F"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const/16 v0, 0x46

    goto :goto_0

    .line 88
    :cond_1
    const-string v1, "E"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    const/16 v0, 0x45

    goto :goto_0

    .line 90
    :cond_2
    const-string v1, "N"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    const/16 v0, 0x4e

    .line 94
    :cond_3
    :goto_0
    return v0
.end method

.method public static writeTestResult(IB)Z
    .locals 6
    .param p0, "index"    # I
    .param p1, "value"    # B

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "out":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/private/factory/test_result"

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 39
    add-int/lit8 v2, p0, -0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 40
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 41
    const-string v2, "TestResultUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeTestResult path: /mnt/vendor/private/factory/test_result, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    nop

    .line 49
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 50
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    .end local p0    # "index":I
    .end local p1    # "value":B
    :goto_0
    return v1

    .line 54
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    .restart local p0    # "index":I
    .restart local p1    # "value":B
    :goto_1
    nop

    .line 56
    const/4 v1, 0x1

    return v1

    .line 47
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 43
    :catch_1
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeTestResult Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    nop

    .line 48
    if-eqz v0, :cond_0

    .line 49
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 50
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 52
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 54
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    nop

    .line 45
    return v1

    .line 47
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 48
    if-eqz v0, :cond_1

    .line 49
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 50
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 54
    :cond_1
    nop

    .line 53
    throw v2
.end method
