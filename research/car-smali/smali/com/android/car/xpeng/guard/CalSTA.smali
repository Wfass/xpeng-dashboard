.class public Lcom/android/car/xpeng/guard/CalSTA;
.super Ljava/lang/Object;
.source "CalSTA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Mean([D)D
    .locals 6
    .param p0, "data"    # [D

    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .local v0, "mean":D
    invoke-static {p0}, Lcom/android/car/xpeng/guard/CalSTA;->Sum([D)D

    move-result-wide v2

    array-length v4, p0

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 14
    .end local v0    # "mean":D
    .local v2, "mean":D
    return-wide v2
.end method

.method public static POP_STD_dev([D)D
    .locals 2
    .param p0, "data"    # [D

    .line 30
    invoke-static {p0}, Lcom/android/car/xpeng/guard/CalSTA;->POP_Variance([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 31
    .local v0, "std_dev":D
    return-wide v0
.end method

.method public static POP_Variance([D)D
    .locals 7
    .param p0, "data"    # [D

    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .local v0, "variance":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 21
    aget-wide v3, p0, v2

    invoke-static {p0}, Lcom/android/car/xpeng/guard/CalSTA;->Mean([D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    .end local v2    # "i":I
    :cond_0
    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 24
    return-wide v0
.end method

.method public static Sample_STD_dev([D)D
    .locals 2
    .param p0, "data"    # [D

    .line 47
    invoke-static {p0}, Lcom/android/car/xpeng/guard/CalSTA;->Sample_Variance([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 48
    .local v0, "std_dev":D
    return-wide v0
.end method

.method public static Sample_Variance([D)D
    .locals 7
    .param p0, "data"    # [D

    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .local v0, "variance":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 38
    aget-wide v3, p0, v2

    invoke-static {p0}, Lcom/android/car/xpeng/guard/CalSTA;->Mean([D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "i":I
    :cond_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 41
    return-wide v0
.end method

.method public static Sum([D)D
    .locals 5
    .param p0, "data"    # [D

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 7
    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    .line 6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static main111([Ljava/lang/String;)V
    .locals 5
    .param p0, "arg"    # [Ljava/lang/String;

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 53
    .local v0, "testdata":[D
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u603b\u548cSum  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/car/xpeng/guard/CalSTA;->Sum([D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e73\u5747\u503cMean  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/car/xpeng/guard/CalSTA;->Mean([D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u603b\u4f53\u65b9\u5deePopulation Variance  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/car/xpeng/guard/CalSTA;->POP_Variance([D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u603b\u4f53\u6807\u51c6\u5deePopulation STD_dev   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/car/xpeng/guard/CalSTA;->POP_STD_dev([D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6837\u672c\u65b9\u5deeSample Variance  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/car/xpeng/guard/CalSTA;->Sample_Variance([D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6837\u672c\u6807\u51c6\u5deeSample STD_dev   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/car/xpeng/guard/CalSTA;->Sample_STD_dev([D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-void

    :array_0
    .array-data 8
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4018000000000000L    # 6.0
        0x401c000000000000L    # 7.0
        0x4020000000000000L    # 8.0
        0x4022000000000000L    # 9.0
        0x4028000000000000L    # 12.0
        0x4042000000000000L    # 36.0
    .end array-data
.end method
