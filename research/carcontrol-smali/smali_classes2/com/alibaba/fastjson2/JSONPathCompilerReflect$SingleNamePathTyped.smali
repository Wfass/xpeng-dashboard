.class public Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;
.super Lcom/alibaba/fastjson2/JSONPath;
.source "JSONPathCompilerReflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathCompilerReflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleNamePathTyped"
.end annotation


# instance fields
.field final fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field final objectClass:Ljava/lang/Class;

.field final objectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/writer/FieldWriter;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 217
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->objectClass:Ljava/lang/Class;

    .line 218
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 219
    iput-object p4, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 220
    iput-object p5, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 221
    iput-object p6, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 251
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 0

    .line 256
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getParent()Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isRef()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 310
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public varargs set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 0

    .line 269
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz p3, :cond_0

    .line 272
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 270
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 282
    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 287
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 278
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setInt(Ljava/lang/Object;I)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;I)V

    return-void

    .line 295
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setLong(Ljava/lang/Object;J)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;J)V

    return-void

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
