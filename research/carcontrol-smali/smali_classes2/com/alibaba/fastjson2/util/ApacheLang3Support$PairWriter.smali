.class public Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;
.super Ljava/lang/Object;
.source "ApacheLang3Support.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/ApacheLang3Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PairWriter"
.end annotation


# static fields
.field static final leftName:[B

.field static final rightName:[B


# instance fields
.field left:Ljava/util/function/Function;

.field final objectClass:Ljava/lang/Class;

.field right:Ljava/util/function/Function;

.field final typeName:Ljava/lang/String;

.field final typeNameHash:J

.field typeNameJSONB:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "left"

    .line 165
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->leftName:[B

    const-string/jumbo v0, "right"

    .line 166
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->rightName:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->objectClass:Ljava/lang/Class;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->typeName:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->typeNameHash:J

    return-void
.end method


# virtual methods
.method getLeft(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->left:Ljava/util/function/Function;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "getLeft"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->left:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "getLeft method not found"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 239
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->left:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getRight(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->right:Ljava/util/function/Function;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "getRight"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 247
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->right:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "getRight method not found"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 254
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->right:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

    if-nez p2, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 208
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->getLeft(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 209
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->getRight(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 211
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 212
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide p4

    sget-object p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WritePairAsJavaBean:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    if-eqz p4, :cond_1

    const-string p4, "left"

    .line 213
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 215
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    const-string/jumbo p3, "right"

    .line 217
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameAny(Ljava/lang/Object;)V

    .line 221
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 222
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide p3

    sget-object p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p3, p5

    const-wide/16 p5, 0x0

    cmp-long p3, p3, p5

    if-eqz p3, :cond_2

    .line 182
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->typeNameJSONB:[B

    if-nez p3, :cond_1

    .line 183
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->typeName:Ljava/lang/String;

    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->typeNameJSONB:[B

    .line 185
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->typeNameJSONB:[B

    iget-wide p4, p0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->typeNameHash:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 190
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->getLeft(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 191
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->getRight(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 193
    sget-object p4, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->leftName:[B

    sget-wide p5, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairReader;->LEFT:J

    invoke-virtual {p1, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    .line 194
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 196
    sget-object p3, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;->rightName:[B

    sget-wide p4, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairReader;->RIGHT:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    .line 197
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method
