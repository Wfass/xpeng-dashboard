.class final Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RandomIndexSegment"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;


# instance fields
.field random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 5

    .line 67
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->current:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v0, v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->next:Lcom/alibaba/fastjson2/JSONPathSegment;

    if-nez v0, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    return-void

    .line 74
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 75
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    if-nez p1, :cond_3

    .line 86
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v2

    rem-int/2addr p1, v2

    .line 90
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 91
    iput-boolean v1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 95
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 97
    :goto_1
    iget-char v2, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_c

    .line 98
    iget-char v2, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_5

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto/16 :goto_3

    .line 104
    :cond_5
    iget-char v2, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_b

    const/16 v3, 0x27

    if-eq v2, v3, :cond_b

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_a

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_9

    const/16 v3, 0x66

    if-eq v2, v3, :cond_8

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_7

    const/16 v3, 0x74

    if-eq v2, v3, :cond_8

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_6

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_a

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_a

    packed-switch v2, :pswitch_data_0

    .line 140
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char p1, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 125
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v2

    goto :goto_2

    .line 136
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    const/4 v2, 0x0

    goto :goto_2

    .line 133
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 122
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 118
    :cond_a
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v2

    goto :goto_2

    .line 129
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    :goto_2
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 147
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    if-nez p1, :cond_d

    .line 148
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    .line 151
    :cond_d
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v2

    rem-int/2addr p1, v2

    .line 152
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 4

    .line 158
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 162
    :goto_0
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 163
    check-cast v0, Ljava/util/List;

    .line 164
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    if-nez v1, :cond_2

    .line 170
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v1, v3

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 175
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 179
    :cond_3
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 180
    check-cast v0, [Ljava/lang/Object;

    .line 181
    array-length v1, v0

    if-nez v1, :cond_4

    return-void

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    if-nez v1, :cond_5

    .line 187
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    .line 190
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    array-length v3, v0

    rem-int/2addr v1, v3

    .line 191
    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 192
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 196
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
