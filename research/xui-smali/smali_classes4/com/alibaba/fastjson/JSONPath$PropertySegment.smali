.class Lcom/alibaba/fastjson/JSONPath$PropertySegment;
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
    name = "PropertySegment"
.end annotation


# instance fields
.field private final deep:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "deep"    # Z

    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    .line 2041
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    .line 2042
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    .line 2043
    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 2033
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    return v0
.end method

.method static synthetic access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 2033
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .line 2046
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v0, :cond_0

    .line 2047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2048
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1, v0}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 2049
    return-object v0

    .line 2052
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .locals 12
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "context"    # Lcom/alibaba/fastjson/JSONPath$Context;

    .line 2057
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 2059
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2060
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    .line 2063
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/16 v4, 0xe

    const/4 v5, 0x3

    const/16 v6, 0x10

    if-ne v1, v4, :cond_10

    .line 2064
    const-string v1, "*"

    iget-object v7, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2065
    return-void

    .line 2068
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2071
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v1, :cond_2

    .line 2072
    iget-object v1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_0

    .line 2074
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 2077
    .restart local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v7

    const/16 v8, 0xc

    const/4 v9, 0x0

    if-eq v7, v8, :cond_5

    if-eq v7, v4, :cond_3

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 2132
    :pswitch_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2133
    goto :goto_2

    .line 2119
    :cond_3
    iget-boolean v7, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v7, :cond_4

    .line 2120
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    goto :goto_2

    .line 2122
    :cond_4
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipObject(Z)V

    .line 2124
    goto :goto_2

    .line 2079
    :cond_5
    iget-boolean v7, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v7, :cond_6

    .line 2080
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    .line 2081
    goto :goto_2

    .line 2083
    :cond_6
    iget-wide v7, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    iget-boolean v10, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    invoke-virtual {v0, v7, v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField(JZ)I

    move-result v7

    .line 2084
    .local v7, "matchStat":I
    if-ne v7, v5, :cond_a

    .line 2086
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v8

    if-eq v8, v3, :cond_8

    const/4 v10, 0x4

    if-eq v8, v10, :cond_7

    .line 2096
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 2092
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v8

    .line 2093
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2094
    goto :goto_1

    .line 2088
    .end local v8    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v8

    .line 2089
    .restart local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2090
    nop

    .line 2096
    :goto_1
    nop

    .line 2100
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 2101
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_9

    .line 2102
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2103
    goto :goto_0

    .line 2105
    :cond_9
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipObject(Z)V

    .line 2107
    .end local v8    # "value":Ljava/lang/Object;
    goto :goto_2

    :cond_a
    if-ne v7, v2, :cond_b

    .line 2108
    goto :goto_0

    .line 2110
    :cond_b
    iget-boolean v8, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-nez v8, :cond_f

    .line 2113
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipObject(Z)V

    .line 2116
    nop

    .line 2138
    .end local v7    # "matchStat":I
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_d

    .line 2139
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2140
    nop

    .line 2149
    iget-boolean v2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-nez v2, :cond_c

    .line 2150
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 2151
    iput-object v1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    .line 2154
    :cond_c
    return-void

    .line 2141
    :cond_d
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v7

    if-ne v7, v6, :cond_e

    .line 2142
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2143
    goto/16 :goto_0

    .line 2145
    :cond_e
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal json : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2111
    .restart local v7    # "matchStat":I
    :cond_f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2157
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "matchStat":I
    :cond_10
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-nez v1, :cond_12

    .line 2158
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    iget-boolean v3, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField(JZ)I

    move-result v1

    .line 2159
    .local v1, "matchStat":I
    if-ne v1, v5, :cond_11

    .line 2160
    iget-boolean v2, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v2, :cond_11

    .line 2162
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 2176
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 2172
    :pswitch_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 2173
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2174
    goto :goto_3

    .line 2168
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v2

    .line 2169
    .restart local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2170
    goto :goto_3

    .line 2164
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v2

    .line 2165
    .restart local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2166
    nop

    .line 2176
    :goto_3
    nop

    .line 2180
    iget-boolean v3, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v3, :cond_11

    .line 2181
    iput-object v2, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    .line 2185
    .end local v2    # "value":Ljava/lang/Object;
    :cond_11
    return-void

    .line 2190
    .end local v1    # "matchStat":I
    :cond_12
    :goto_4
    iget-wide v7, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    invoke-virtual {v0, v7, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField(JZ)I

    move-result v1

    .line 2191
    .restart local v1    # "matchStat":I
    if-ne v1, v2, :cond_13

    .line 2192
    nop

    .line 2233
    .end local v1    # "matchStat":I
    return-void

    .line 2195
    .restart local v1    # "matchStat":I
    :cond_13
    if-ne v1, v5, :cond_17

    .line 2196
    iget-boolean v4, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v4, :cond_19

    .line 2198
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 2212
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 2208
    :pswitch_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 2209
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2210
    goto :goto_5

    .line 2204
    .end local v4    # "value":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v4

    .line 2205
    .restart local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2206
    goto :goto_5

    .line 2200
    .end local v4    # "value":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v4

    .line 2201
    .restart local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2202
    nop

    .line 2212
    :goto_5
    nop

    .line 2216
    iget-boolean v7, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v7, :cond_16

    .line 2217
    iget-object v7, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_15

    .line 2218
    iget-object v7, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 2219
    .local v7, "list":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_14

    instance-of v8, v4, Ljava/util/List;

    if-eqz v8, :cond_14

    .line 2220
    iput-object v4, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_6

    .line 2222
    :cond_14
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2224
    .end local v7    # "list":Ljava/util/List;
    :goto_6
    goto :goto_7

    .line 2225
    :cond_15
    iput-object v4, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    .line 2228
    .end local v4    # "value":Ljava/lang/Object;
    :cond_16
    :goto_7
    goto :goto_8

    .line 2229
    :cond_17
    const/4 v4, 0x1

    if-eq v1, v4, :cond_18

    if-ne v1, v3, :cond_19

    .line 2230
    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    .line 2232
    .end local v1    # "matchStat":I
    :cond_19
    :goto_8
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "parent"    # Ljava/lang/Object;

    .line 2244
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "parent"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 2236
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v0, :cond_0

    .line 2237
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0

    .line 2239
    :cond_0
    iget-object v8, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-wide v9, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    move-object v6, p1

    move-object v7, p2

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    .line 2241
    :goto_0
    return-void
.end method
