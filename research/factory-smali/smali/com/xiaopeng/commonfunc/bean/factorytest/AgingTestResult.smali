.class public Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;
.super Ljava/lang/Object;
.source "AgingTestResult.java"


# instance fields
.field public testrecord:[[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x2

    const/4 v1, 0x3

    filled-new-array {v1, v0}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 9
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-byte v4, v1, v3

    add-int/lit8 v4, v4, -0x30

    aput v4, v2, v3

    .line 10
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v3

    aget-byte v4, v1, v0

    add-int/lit8 v4, v4, -0x30

    const/4 v5, 0x1

    aput v4, v2, v5

    .line 11
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v5

    const/4 v4, 0x4

    aget-byte v4, v1, v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v2, v3

    .line 12
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v5

    const/4 v4, 0x6

    aget-byte v4, v1, v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v2, v5

    .line 13
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v0

    const/16 v4, 0x8

    aget-byte v4, v1, v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v2, v3

    .line 14
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v0, v2, v0

    const/16 v2, 0xa

    aget-byte v2, v1, v2

    add-int/lit8 v2, v2, -0x30

    aput v2, v0, v5

    .line 15
    return-void
.end method


# virtual methods
.method public toByteArrayForDm()[B
    .locals 6

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 41
    .local v0, "result":[B
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v1, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v1, v1, v3

    aget v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v1, v1, v3

    aget v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v1, v1, v4

    aget v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 46
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v1, v1, v4

    aget v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 47
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 18
    const-string v0, ""

    .line 19
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "iozone     \u6d4b\u8bd5\u6b21\u6570 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\niozone     PASS\u6b21\u6570 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmemtester  \u6d4b\u8bd5\u6b21\u6570 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmemtester  PASS\u6b21\u6570 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v4

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ncpu_stress \u6d4b\u8bd5\u6b21\u6570 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    const/4 v5, 0x2

    aget-object v2, v2, v5

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ncpu_stress PASS\u6b21\u6570 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v5

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public toStringForAt()Ljava/lang/String;
    .locals 6

    .line 29
    const-string v0, ""

    .line 30
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v4

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    const/4 v5, 0x2

    aget-object v2, v2, v5

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/AgingTestResult;->testrecord:[[I

    aget-object v2, v2, v5

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method
