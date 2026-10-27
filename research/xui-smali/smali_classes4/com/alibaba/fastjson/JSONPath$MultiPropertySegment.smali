.class Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiPropertySegment"
.end annotation


# instance fields
.field private final propertyNames:[Ljava/lang/String;

.field private final propertyNamesHash:[J


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyNames"    # [Ljava/lang/String;

    .line 2253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2254
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    .line 2255
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    .line 2256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2257
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2259
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 2262
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2264
    .local v0, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2265
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    aget-wide v3, v3, v1

    invoke-virtual {p1, p3, v2, v3, v4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v2

    .line 2266
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2264
    .end local v2    # "fieldValue":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2269
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .locals 7
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "context"    # Lcom/alibaba/fastjson/JSONPath$Context;

    .line 2273
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 2276
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    iget-object v1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2277
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v2, v1

    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    iput-object v1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_0

    .line 2279
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    iget-object v1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/JSONArray;

    .restart local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    :goto_0
    move-object v1, v2

    .line 2281
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2282
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 2281
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2338
    .end local v2    # "i":I
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField([J)I

    move-result v2

    .line 2339
    .local v2, "index":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2340
    .local v3, "matchStat":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 2342
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x10

    packed-switch v4, :pswitch_data_0

    .line 2356
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 2352
    :pswitch_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 2353
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2354
    goto :goto_3

    .line 2348
    .end local v4    # "value":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v4

    .line 2349
    .restart local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2350
    goto :goto_3

    .line 2344
    .end local v4    # "value":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v4

    .line 2345
    .restart local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2346
    nop

    .line 2356
    :goto_3
    nop

    .line 2360
    invoke-virtual {v1, v2, v4}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2362
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 2363
    goto :goto_2

    .line 2365
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    nop

    .line 2369
    .end local v2    # "index":I
    .end local v3    # "matchStat":I
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
