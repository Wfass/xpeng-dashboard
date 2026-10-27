.class public interface abstract Lcom/alibaba/fastjson2/JSONB;
.super Ljava/lang/Object;
.source "JSONB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONB$Constants;
    }
.end annotation


# direct methods
.method public static varargs copy(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Lcom/alibaba/fastjson2/JSONWriter$Feature;",
            ")TT;"
        }
    .end annotation

    .line 593
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSON;->copy(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static dump([B)V
    .locals 2

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    .line 82
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONB;->toJSONString([BZ)Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static dump([BLcom/alibaba/fastjson2/SymbolTable;)V
    .locals 2

    .line 87
    new-instance v0, Lcom/alibaba/fastjson2/JSONBDump;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/fastjson2/JSONBDump;-><init>([BLcom/alibaba/fastjson2/SymbolTable;Z)V

    .line 88
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static fromJSONBytes([B)[B
    .locals 6

    .line 1286
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v1

    .line 1287
    const-class p0, Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 1288
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 1289
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static fromJSONString(Ljava/lang/String;)[B
    .locals 0

    .line 1282
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs parse([BLcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 3

    .line 282
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 283
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    array-length p1, p0

    const/4 p2, 0x0

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 288
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAnyObject()Ljava/lang/Object;

    move-result-object p0

    .line 289
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 282
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static varargs parse([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 3

    .line 267
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 268
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    array-length p1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 273
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAnyObject()Ljava/lang/Object;

    move-result-object p0

    .line 274
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 267
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static parseArray([B)Lcom/alibaba/fastjson2/JSONArray;
    .locals 4

    .line 327
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 328
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    array-length v2, p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 333
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readArray()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 334
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 327
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static parseArray([BLjava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 342
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-class p1, Ljava/util/List;

    invoke-direct {v1, v2, v0, p1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 350
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 351
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    array-length v2, p0

    invoke-direct {p1, v0, p0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 356
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 357
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 350
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static varargs parseArray([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 365
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-class p1, Ljava/util/List;

    invoke-direct {v1, v2, v0, p1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 373
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 374
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    array-length p2, p0

    invoke-direct {p1, v0, p0, v3, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 379
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 380
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 381
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 373
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static varargs parseArray([B[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 388
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 392
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 393
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    const/4 v2, 0x0

    array-length v3, p0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 398
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readList([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    .line 399
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 400
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 392
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseArray([B[Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B[",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 407
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 411
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 412
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    const/4 p2, 0x0

    array-length v2, p0

    invoke-direct {v0, v1, p0, p2, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 416
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readList([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    .line 417
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 418
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 411
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject([B)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    .line 297
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 298
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    array-length v2, p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 303
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 304
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 297
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static varargs parseObject([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 3

    .line 312
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 313
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    array-length p1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 318
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 319
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 312
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static parseObject(Ljava/io/InputStream;ILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 678
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object v0, v1, v0

    .line 679
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 685
    :cond_0
    :try_start_0
    array-length v2, v1

    if-ge v2, p1, :cond_1

    .line 686
    new-array v1, p1, [B

    :cond_1
    const/4 v2, 0x0

    .line 688
    invoke-virtual {p0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    if-ne p0, p1, :cond_2

    .line 693
    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONB;->parseObject([BIILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 690
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deserialize failed. expected read length: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " but actual read: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 695
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 696
    throw p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;ILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 706
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object v0, v1, v0

    .line 707
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 712
    :cond_0
    :try_start_0
    array-length v2, v1

    if-ge v2, p1, :cond_1

    .line 713
    new-array v1, p1, [B

    :cond_1
    const/4 v2, 0x0

    .line 715
    invoke-virtual {p0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    if-ne p0, p1, :cond_2

    .line 720
    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONB;->parseObject([BIILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 717
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deserialize failed. expected read length: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " but actual read: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 722
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 723
    throw p0
.end method

.method public static parseObject(Ljava/io/InputStream;Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 655
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v6, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    .line 657
    :try_start_0
    const-class p0, Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    .line 658
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v6

    move-object v2, p1

    .line 661
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 664
    :goto_0
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 665
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 655
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONB;->parseObject(Ljava/io/InputStream;Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 630
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v6, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    .line 633
    :try_start_0
    const-class p0, Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    .line 634
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v6

    move-object v2, p1

    .line 637
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 640
    :goto_0
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 641
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 630
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONB;->parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseObject([BIILjava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 814
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 815
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 816
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 817
    :goto_0
    invoke-virtual {v0, p3, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 819
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, v0

    move-object v5, p3

    .line 825
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 826
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 827
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 819
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static parseObject([BIILjava/lang/Class;Lcom/alibaba/fastjson2/SymbolTable;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            ")TT;"
        }
    .end annotation

    .line 917
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p4

    .line 918
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 919
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v6, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v6

    move-object v2, p3

    .line 925
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 926
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 927
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    :cond_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 919
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static varargs parseObject([BIILjava/lang/Class;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 959
    invoke-static {p4, p5}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p4

    .line 960
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 962
    new-instance p5, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {p5, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p5

    move-object v2, p3

    .line 968
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 969
    iget-object p1, p5, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 970
    invoke-virtual {p5, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    :cond_0
    invoke-virtual {p5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 962
    :try_start_1
    invoke-virtual {p5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static varargs parseObject([BIILjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 860
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 861
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 862
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p4, v2, v4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 863
    :goto_0
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 865
    new-instance p4, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {p4, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p4

    move-object v4, p3

    .line 871
    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 872
    iget-object p1, p4, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 873
    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    :cond_1
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 865
    :try_start_1
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static parseObject([BIILjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 834
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 835
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 836
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 837
    :goto_0
    invoke-virtual {v0, p3, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 839
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, v0

    move-object v5, p3

    .line 845
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 846
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 847
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 839
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static parseObject([BIILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 886
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v6, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 887
    :try_start_0
    iget-wide p0, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 888
    :goto_0
    iget-object p1, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p1, p3, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v6

    move-object v2, p3

    .line 890
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 891
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 892
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 886
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static parseObject([BIILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            ")TT;"
        }
    .end annotation

    .line 934
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p4

    .line 935
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 937
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v6, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v6

    move-object v2, p3

    .line 943
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 944
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 945
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    :cond_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 937
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static varargs parseObject([BIILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 984
    invoke-static {p4, p5}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p4

    .line 985
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 987
    new-instance p5, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {p5, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p5

    move-object v2, p3

    .line 993
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 994
    iget-object p1, p5, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 995
    invoke-virtual {p5, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    :cond_0
    invoke-virtual {p5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 987
    :try_start_1
    invoke-virtual {p5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static varargs parseObject([BIILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 899
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p4

    .line 900
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v6, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 906
    :try_start_0
    invoke-virtual {v6, p3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v6

    move-object v2, p3

    .line 908
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 909
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 910
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :cond_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 900
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static varargs parseObject([BLcom/alibaba/fastjson2/TypeReference;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/alibaba/fastjson2/TypeReference;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 597
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONB;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseObject([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 425
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 426
    new-instance v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    array-length v2, p0

    const/4 v3, 0x0

    invoke-direct {v7, v1, p0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 433
    :try_start_0
    const-class p0, Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    .line 434
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 436
    :cond_0
    sget-wide v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v0, p1, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v7

    move-object v3, p1

    .line 440
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 443
    :goto_0
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 444
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 426
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static parseObject([BLjava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 760
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-direct {v6, p2, p0, v1, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 767
    :try_start_0
    const-class p0, Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    .line 768
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAnyObject()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 770
    :cond_0
    iget-object p0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 774
    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v7

    cmp-long p0, v1, v4

    if-eqz p0, :cond_2

    .line 775
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isArray()Z

    move-result p0

    if-eqz p0, :cond_2

    instance-of p0, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz p0, :cond_2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v6

    move-object v2, p1

    .line 778
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v6

    move-object v2, p1

    .line 780
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 784
    :goto_0
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 785
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 760
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static varargs parseObject([BLjava/lang/Class;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 521
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 522
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 524
    new-instance p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-direct {p2, v1, p0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    move p0, v3

    .line 530
    :goto_0
    :try_start_0
    array-length v2, p3

    if-ge p0, v2, :cond_0

    .line 531
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object v2, p3, p0

    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v4, v6

    iput-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 535
    :cond_0
    const-class p0, Ljava/lang/Object;

    if-ne p1, p0, :cond_1

    .line 536
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAnyObject()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 538
    :cond_1
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-eqz p0, :cond_2

    const/4 v3, 0x1

    .line 539
    :cond_2
    invoke-virtual {v0, p1, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p2

    move-object v4, p1

    .line 540
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 543
    :goto_1
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 544
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 524
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static varargs parseObject([BLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 727
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 728
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 730
    new-instance p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-direct {p2, v1, p0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 737
    :try_start_0
    const-class p0, Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    .line 738
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAnyObject()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 740
    :cond_0
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 741
    :cond_1
    invoke-virtual {v0, p1, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 742
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v3

    cmp-long p0, v0, v6

    if-eqz p0, :cond_2

    .line 743
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isArray()Z

    move-result p0

    if-eqz p0, :cond_2

    instance-of p0, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz p0, :cond_2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p2

    move-object v4, p1

    .line 746
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p2

    move-object v4, p1

    .line 748
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 752
    :goto_0
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 753
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 730
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static parseObject([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 451
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 452
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 454
    new-instance v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    array-length v0, p0

    const/4 v3, 0x0

    invoke-direct {v7, v2, p0, v3, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v7

    move-object v3, p1

    .line 460
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 461
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_0
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 454
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static parseObject([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            ")TT;"
        }
    .end annotation

    .line 473
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 474
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 476
    new-instance v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v2, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;)V

    array-length p2, p0

    const/4 v0, 0x0

    invoke-direct {v7, v2, p0, v0, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v7

    move-object v3, p1

    .line 482
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 483
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 484
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_0
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 476
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 496
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 497
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 498
    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    .line 499
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 501
    new-instance p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    array-length v0, p0

    invoke-direct {p2, v1, p0, p3, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p2

    move-object v4, p1

    .line 507
    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 508
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 501
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            "[",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 556
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 560
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 561
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 563
    new-instance p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    array-length p3, p0

    const/4 v2, 0x0

    invoke-direct {p2, v1, p0, v2, p3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    move p0, v2

    .line 569
    :goto_0
    :try_start_0
    array-length p3, p4

    if-ge p0, p3, :cond_1

    .line 570
    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    aget-object p3, p4, p0

    iget-wide v5, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 574
    :cond_1
    const-class p0, Ljava/lang/Object;

    if-ne p1, p0, :cond_2

    .line 575
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAnyObject()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 577
    :cond_2
    iget-wide p3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p3, v3

    const-wide/16 v3, 0x0

    cmp-long p0, p3, v3

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    .line 578
    :cond_3
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p2

    move-object v4, p1

    .line 579
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 582
    :goto_1
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 583
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 563
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 792
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 793
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 795
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 800
    new-instance p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    array-length v0, p0

    invoke-direct {p2, v1, p0, v2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p2

    move-object v5, p1

    .line 805
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 806
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONReaderJSONB;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 807
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 800
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static varargs parseObject([B[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B[",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 469
    new-instance v0, Lcom/alibaba/fastjson2/util/MultiType;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/util/MultiType;-><init>([Ljava/lang/reflect/Type;)V

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSONB;->parseObject([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs symbolTable([Ljava/lang/String;)Lcom/alibaba/fastjson2/SymbolTable;
    .locals 1

    .line 1233
    new-instance v0, Lcom/alibaba/fastjson2/SymbolTable;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/SymbolTable;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static toBytes(B)[B
    .locals 1

    .line 213
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofJSONB()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 214
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt8(B)V

    .line 215
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 213
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public static toBytes(I)[B
    .locals 2

    const/16 v0, -0x10

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0

    .line 206
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofJSONB()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 207
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 208
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 206
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method public static toBytes(J)[B
    .locals 6

    const-wide/16 v0, -0x8

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 v2, 0xf

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const-wide/16 v4, -0x28

    sub-long/2addr p0, v0

    add-long/2addr p0, v4

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v2, v3

    return-object v2

    .line 233
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofJSONB()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 234
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 235
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 233
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method public static toBytes(Ljava/lang/Object;)[B
    .locals 9

    .line 1093
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 1094
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    if-nez p0, :cond_0

    .line 1099
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    goto :goto_1

    .line 1101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1102
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1103
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v0, v2, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    .line 1104
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1106
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1094
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static toBytes(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter$Context;)[B
    .locals 10

    if-nez p1, :cond_0

    .line 1112
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p1

    .line 1115
    :cond_0
    new-instance v7, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    const/4 v0, 0x0

    invoke-direct {v7, p1, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    if-nez p0, :cond_1

    .line 1117
    :try_start_0
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    goto :goto_1

    .line 1119
    :cond_1
    iput-object p0, v7, Lcom/alibaba/fastjson2/JSONWriterJSONB;->rootObject:Ljava/lang/Object;

    .line 1120
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v0, v7, Lcom/alibaba/fastjson2/JSONWriterJSONB;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 1122
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1124
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1125
    iget-object v4, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v4, v1, v1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 1126
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v8

    cmp-long p1, v4, v2

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    .line 1127
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    .line 1129
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1132
    :goto_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1115
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static toBytes(Ljava/lang/Object;Lcom/alibaba/fastjson2/SymbolTable;)[B
    .locals 9

    .line 1137
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 1138
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    if-nez p0, :cond_0

    .line 1143
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    goto :goto_0

    .line 1145
    :cond_0
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->setRootObject(Ljava/lang/Object;)V

    .line 1147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1148
    invoke-virtual {v0, p1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    .line 1149
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1151
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1138
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static varargs toBytes(Ljava/lang/Object;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 9

    .line 1156
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 1157
    new-instance p2, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    if-nez p0, :cond_0

    .line 1159
    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    goto :goto_1

    .line 1161
    :cond_0
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->setRootObject(Ljava/lang/Object;)V

    .line 1163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1165
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1167
    :goto_0
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v2, p1, p1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    .line 1168
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-eqz p1, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p2

    move-object v4, p0

    .line 1169
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p2

    move-object v4, p0

    .line 1171
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1174
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1157
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static varargs toBytes(Ljava/lang/Object;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 9

    .line 1179
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 1180
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 1182
    new-instance p2, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    if-nez p0, :cond_0

    .line 1187
    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    goto :goto_1

    .line 1189
    :cond_0
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->setRootObject(Ljava/lang/Object;)V

    .line 1191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1193
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 1195
    :goto_0
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v1, p1, p1, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    .line 1196
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-eqz p1, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p2

    move-object v4, p0

    .line 1197
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p2

    move-object v4, p0

    .line 1199
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1202
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1182
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static varargs toBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 9

    .line 1207
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 1208
    new-instance p1, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    if-nez p0, :cond_0

    .line 1213
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    goto :goto_1

    .line 1215
    :cond_0
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriterJSONB;->rootObject:Ljava/lang/Object;

    .line 1216
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONWriterJSONB;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 1218
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1220
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1221
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v5, v2, v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    .line 1222
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v5

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    .line 1223
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    .line 1225
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1228
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1208
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-array p0, v1, [B

    const/16 v1, -0x51

    aput-byte v1, p0, v0

    return-object p0

    .line 1006
    :cond_0
    sget v2, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v3, 0x8

    const/16 v4, 0x2f

    if-ne v2, v3, :cond_4

    .line 1007
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object v2

    .line 1008
    array-length v3, v2

    if-gt v3, v4, :cond_5

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 1012
    aget-char v5, v2, v4

    const/16 v6, 0x7f

    if-le v5, v6, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_5

    .line 1019
    array-length p0, v2

    add-int/2addr p0, v1

    new-array p0, p0, [B

    add-int/lit8 v1, v3, 0x49

    int-to-byte v1, v1

    .line 1020
    aput-byte v1, p0, v0

    :goto_2
    if-ge v0, v3, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 1022
    aget-char v0, v2, v0

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    move v0, v1

    goto :goto_2

    :cond_3
    return-object p0

    .line 1027
    :cond_4
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v2, :cond_5

    .line 1028
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v2, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_5

    .line 1030
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1031
    array-length v3, v2

    if-gt v3, v4, :cond_5

    .line 1033
    array-length p0, v2

    add-int/2addr p0, v1

    new-array p0, p0, [B

    add-int/lit8 v3, v3, 0x49

    int-to-byte v3, v3

    .line 1034
    aput-byte v3, p0, v0

    .line 1035
    array-length v3, v2

    invoke-static {v2, v0, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 1041
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 1045
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeString(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1041
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method public static toBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [B

    const/16 p1, -0x51

    aput-byte p1, p0, v1

    return-object p0

    .line 1056
    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne p1, v2, :cond_1

    const/16 v2, 0x7b

    goto :goto_1

    .line 1058
    :cond_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-ne p1, v2, :cond_2

    const/16 v2, 0x7d

    goto :goto_1

    .line 1060
    :cond_2
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-ne p1, v2, :cond_3

    const/16 v2, 0x7c

    goto :goto_1

    .line 1062
    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p1, v2, :cond_4

    const/16 v2, 0x7a

    goto :goto_1

    .line 1064
    :cond_4
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-eq p1, v2, :cond_7

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-ne p1, v2, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 1066
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GB18030"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x7e

    goto :goto_1

    .line 1069
    :cond_6
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    const/16 v2, 0x79

    .line 1072
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 1073
    array-length p1, p0

    add-int/lit8 p1, p1, 0x2

    .line 1074
    array-length v3, p0

    const/16 v4, 0x2f

    if-gt v3, v4, :cond_8

    add-int/2addr p1, v1

    goto :goto_2

    .line 1076
    :cond_8
    array-length v3, p0

    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_9

    add-int/2addr p1, v0

    goto :goto_2

    .line 1078
    :cond_9
    array-length v3, p0

    const v4, 0x3ffff

    if-gt v3, v4, :cond_a

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_a
    add-int/lit8 p1, p1, 0x4

    .line 1084
    :goto_2
    new-array p1, p1, [B

    .line 1085
    aput-byte v2, p1, v1

    .line 1087
    array-length v2, p0

    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson2/JSONB;->writeInt([BII)I

    move-result v2

    add-int/2addr v2, v0

    .line 1088
    array-length v0, p0

    invoke-static {p0, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static toBytes(S)[B
    .locals 1

    .line 220
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofJSONB()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 221
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt16(S)V

    .line 222
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 220
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public static toBytes(Z)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    if-eqz p0, :cond_0

    const/16 p0, -0x4f

    goto :goto_0

    :cond_0
    const/16 p0, -0x50

    :goto_0
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static toJSONString([B)Ljava/lang/String;
    .locals 2

    .line 1237
    new-instance v0, Lcom/alibaba/fastjson2/JSONBDump;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/JSONBDump;-><init>([BZ)V

    .line 1238
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString([BLcom/alibaba/fastjson2/SymbolTable;)Ljava/lang/String;
    .locals 2

    .line 1250
    new-instance v0, Lcom/alibaba/fastjson2/JSONBDump;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/fastjson2/JSONBDump;-><init>([BLcom/alibaba/fastjson2/SymbolTable;Z)V

    .line 1251
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString([BZ)Ljava/lang/String;
    .locals 1

    .line 1245
    new-instance v0, Lcom/alibaba/fastjson2/JSONBDump;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONBDump;-><init>([BZ)V

    .line 1246
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static typeName(B)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x48

    const-string v1, "INT32 "

    if-eq p0, v0, :cond_9

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_8

    packed-switch p0, :pswitch_data_0

    const-string v0, "INT64 "

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/16 v2, -0x6c

    if-lt p0, v2, :cond_0

    const/16 v2, -0x5c

    if-gt p0, v2, :cond_0

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARRAY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0x49

    if-lt p0, v2, :cond_1

    const/16 v2, 0x79

    if-gt p0, v2, :cond_1

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STR_ASCII "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, -0x10

    if-lt p0, v2, :cond_2

    const/16 v2, 0x2f

    if-gt p0, v2, :cond_2

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v2, 0x30

    if-lt p0, v2, :cond_3

    const/16 v2, 0x3f

    if-gt p0, v2, :cond_3

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v2, 0x40

    if-lt p0, v2, :cond_4

    const/16 v2, 0x47

    if-gt p0, v2, :cond_4

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v1, -0x28

    if-lt p0, v1, :cond_5

    const/16 v1, -0x11

    if-gt p0, v1, :cond_5

    .line 1381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v1, -0x38

    if-lt p0, v1, :cond_6

    const/16 v1, -0x29

    if-gt p0, v1, :cond_6

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 v1, -0x40

    if-lt p0, v1, :cond_7

    const/16 v1, -0x39

    if-gt p0, v1, :cond_7

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1392
    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1315
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STR_UTF16BE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1313
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STR_UTF16LE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1311
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STR_UTF16 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1309
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STR_UTF8 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1324
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1317
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INT8 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1319
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INT16 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1335
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIGINT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1338
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DECIMAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1327
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FLOAT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1332
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DOUBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1305
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TRUE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1307
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FALSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1303
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1346
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIMESTAMP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1348
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIMESTAMP_MINUTES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1350
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIMESTAMP_SECONDS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1352
    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIMESTAMP_MILLIS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1354
    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIMESTAMP_WITH_TIMEZONE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1356
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOCAL_DATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1344
    :pswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOCAL_DATETIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1340
    :pswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOCAL_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1295
    :pswitch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OBJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1297
    :pswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OBJECT_END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1299
    :pswitch_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REFERENCE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1358
    :pswitch_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPED_ANY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1342
    :pswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BINARY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1301
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYMBOL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1321
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x6f
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x5b
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeInt([BII)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, -0x10

    if-lt p2, v1, :cond_0

    const/16 v1, 0x2f

    if-gt p2, v1, :cond_0

    int-to-byte p2, p2

    .line 241
    aput-byte p2, p0, p1

    return v0

    :cond_0
    const/16 v1, -0x800

    const/4 v2, 0x2

    if-lt p2, v1, :cond_1

    const/16 v1, 0x7ff

    if-gt p2, v1, :cond_1

    shr-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x38

    int-to-byte v1, v1

    .line 246
    aput-byte v1, p0, p1

    add-int/2addr p1, v0

    int-to-byte p2, p2

    .line 247
    aput-byte p2, p0, p1

    return v2

    :cond_1
    const/high16 v0, -0x40000

    if-lt p2, v0, :cond_2

    const v0, 0x3ffff

    if-gt p2, v0, :cond_2

    shr-int/lit8 v0, p2, 0x10

    add-int/lit8 v0, v0, 0x44

    int-to-byte v0, v0

    .line 252
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 253
    aput-byte v1, p0, v0

    add-int/2addr p1, v2

    int-to-byte p2, p2

    .line 254
    aput-byte p2, p0, p1

    const/4 p0, 0x3

    return p0

    :cond_2
    const/16 v0, 0x48

    .line 258
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    .line 259
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 260
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 261
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x4

    int-to-byte p2, p2

    .line 262
    aput-byte p2, p0, p1

    const/4 p0, 0x5

    return p0
.end method

.method public static varargs writeTo(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)I
    .locals 8

    .line 1259
    :try_start_0
    new-instance v7, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :try_start_1
    invoke-virtual {v7, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    if-nez p1, :cond_0

    .line 1266
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    goto :goto_0

    .line 1268
    :cond_0
    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->setRootObject(Ljava/lang/Object;)V

    .line 1270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 1271
    invoke-virtual {v7, p2, p2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p1

    .line 1272
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 1275
    :goto_0
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->flushTo(Ljava/io/OutputStream;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    :try_start_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    .line 1259
    :try_start_3
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 1277
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "writeJSONString error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
