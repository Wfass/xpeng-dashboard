.class public Lcom/xiaopeng/factory/utils/TestResultUtil;
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

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 110
    const-string v2, "0,0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    const-string v1, "/mnt/vendor/private/factory/aging_test_record"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static createTestResultFile(B)Z
    .locals 3
    .param p0, "initValue"    # B

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_0

    .line 29
    new-instance v2, Lcom/xiaopeng/factory/bean/factorytest/TestResultItem;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/factory/bean/factorytest/TestResultItem;-><init>(IB)V

    invoke-virtual {v2}, Lcom/xiaopeng/factory/bean/factorytest/TestResultItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_0
    const-string v1, "/mnt/vendor/private/factory/test_result"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static increaseAgingTestRecord(I)Z
    .locals 6
    .param p0, "index"    # I

    .line 118
    const/4 v0, 0x0

    .line 121
    .local v0, "out":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/private/factory/aging_test_record"

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 122
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 123
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 124
    .local v2, "value":I
    int-to-long v3, p0

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    .line 126
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

    .line 133
    nop

    .line 134
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 136
    :catch_0
    move-exception v3

    .line 137
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    .end local v2    # "value":I
    .end local p0    # "index":I
    :goto_0
    return v1

    .line 138
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "value":I
    .restart local p0    # "index":I
    :goto_1
    nop

    .line 137
    nop

    .line 140
    const/4 v1, 0x1

    return v1

    .line 132
    .end local v2    # "value":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 128
    :catch_1
    move-exception v2

    .line 129
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

    .line 130
    nop

    .line 133
    if-eqz v0, :cond_0

    .line 134
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 138
    :cond_0
    nop

    .line 130
    return v1

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 133
    if-eqz v0, :cond_1

    .line 134
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 136
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 137
    throw v2
.end method

.method public static readAgingTestRecord(I)I
    .locals 6
    .param p0, "index"    # I

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "value":I
    const/4 v1, 0x0

    .line 153
    .local v1, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/private/factory/aging_test_record"

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 154
    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 155
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    add-int/lit8 v0, v2, -0x30

    .line 156
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

    .line 160
    nop

    .line 162
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :goto_0
    goto :goto_2

    .line 163
    :catch_0
    move-exception v2

    .line 164
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

    .line 160
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 157
    :catch_1
    move-exception v2

    .line 158
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

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 162
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 163
    :catch_2
    move-exception v2

    .line 164
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return v0

    .line 160
    :goto_3
    if-eqz v1, :cond_1

    .line 162
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 165
    goto :goto_4

    .line 163
    :catch_3
    move-exception v3

    .line 164
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

    .line 165
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v2
.end method

.method public static readAgingTestRecord()Ljava/lang/String;
    .locals 1

    .line 145
    const-string v0, "/mnt/vendor/private/factory/aging_test_record"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readTestResult(I)B
    .locals 6
    .param p0, "index"    # I

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "value":B
    const/4 v1, 0x0

    .line 65
    .local v1, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/private/factory/test_result"

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 66
    add-int/lit8 v2, p0, -0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    move v0, v2

    .line 68
    const-string v2, "TestResultUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readTestResult path: /mnt/vendor/private/factory/test_result, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    nop

    .line 74
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :goto_0
    goto :goto_2

    .line 75
    :catch_0
    move-exception v2

    .line 76
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

    .line 72
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 69
    :catch_1
    move-exception v2

    .line 70
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

    .line 72
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 74
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 75
    :catch_2
    move-exception v2

    .line 76
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "TestResultUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return v0

    .line 72
    :goto_3
    if-eqz v1, :cond_1

    .line 74
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 77
    goto :goto_4

    .line 75
    :catch_3
    move-exception v3

    .line 76
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

    .line 77
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v2
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "value":B
    const-string v1, "P"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/16 v0, 0x50

    goto :goto_0

    .line 87
    :cond_0
    const-string v1, "F"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const/16 v0, 0x46

    goto :goto_0

    .line 89
    :cond_1
    const-string v1, "E"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    const/16 v0, 0x45

    goto :goto_0

    .line 91
    :cond_2
    const-string v1, "N"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    const/16 v0, 0x4e

    .line 95
    :cond_3
    :goto_0
    return v0
.end method

.method public static writeTestResult(IB)Z
    .locals 6
    .param p0, "index"    # I
    .param p1, "value"    # B

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "out":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/private/factory/test_result"

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 40
    add-int/lit8 v2, p0, -0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 41
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 42
    const-string v2, "TestResultUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeTestResult path: /mnt/vendor/private/factory/test_result, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, p1

    .line 43
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    nop

    .line 50
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 51
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    .end local p0    # "index":I
    .end local p1    # "value":B
    :goto_0
    return v1

    .line 55
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    .restart local p0    # "index":I
    .restart local p1    # "value":B
    :goto_1
    nop

    .line 57
    const/4 v1, 0x1

    return v1

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

    .line 46
    nop

    .line 49
    if-eqz v0, :cond_0

    .line 50
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 51
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 53
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 55
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    nop

    .line 46
    return v1

    .line 48
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 49
    if-eqz v0, :cond_1

    .line 50
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 51
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :cond_1
    nop

    .line 54
    throw v2
.end method
