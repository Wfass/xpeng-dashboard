.class public Lcom/xiaopeng/devtools/model/b;
.super Ljava/lang/Object;
.source "ItemResultLab.java"


# static fields
.field private static rn:Lcom/xiaopeng/devtools/model/b;


# instance fields
.field private ro:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/b;->ro:Ljava/util/List;

    .line 27
    return-void
.end method

.method public static fk()Lcom/xiaopeng/devtools/model/b;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/devtools/model/b;->rn:Lcom/xiaopeng/devtools/model/b;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/xiaopeng/devtools/model/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/b;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/model/b;->rn:Lcom/xiaopeng/devtools/model/b;

    .line 33
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/model/b;->rn:Lcom/xiaopeng/devtools/model/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;)V
    .locals 3

    .line 37
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/b;->ro:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/b;->ro:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;->getItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/b;->ro:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;->isSucceed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;->setSucceed(Z)V

    .line 40
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/b;->ro:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;->getLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;->setLog(Ljava/lang/String;)V

    .line 41
    return-void

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/b;->ro:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/model/b;->a(Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;)V

    .line 75
    return-void
.end method

.method public bo(Ljava/lang/String;)V
    .locals 5

    .line 103
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/a;->m(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {}, Lcom/xiaopeng/lib/utils/b;->oJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/b;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 108
    const/4 v1, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 114
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v1

    .line 119
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;

    .line 120
    const-string v1, "TestResult"

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    if-eqz v2, :cond_1

    .line 123
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    goto :goto_2

    .line 124
    :catch_2
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    :cond_1
    :goto_2
    goto :goto_1

    .line 131
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 134
    goto :goto_3

    .line 132
    :catch_3
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    :cond_3
    :goto_3
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 7

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/b;->fl()Ljava/util/List;

    move-result-object v1

    .line 80
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;

    invoke-virtual {v4}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;->getItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;->isSucceed()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;->getLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 85
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;

    .line 89
    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const-string v3, "target = ?"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 90
    invoke-virtual {v1, v3, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;

    .line 93
    if-nez v1, :cond_2

    .line 94
    new-instance v1, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;-><init>()V

    .line 95
    invoke-virtual {v1, p1}, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;->setTarget(Ljava/lang/String;)V

    .line 97
    :cond_2
    invoke-virtual {v1, p2}, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;->setSuccess(Z)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;->setItemsResult(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;->save()Ljava/lang/Long;

    .line 100
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/b;->ro:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    return-void
.end method

.method public fl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/factorytest/ItemResult;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/b;->ro:Ljava/util/List;

    return-object v0
.end method

.method public fm()V
    .locals 2

    .line 65
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/xiaopeng/devtools/bean/factorytest/TestResult;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 66
    return-void
.end method
