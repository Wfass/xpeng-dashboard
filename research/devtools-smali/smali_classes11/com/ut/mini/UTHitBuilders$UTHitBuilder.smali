.class public Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
.super Ljava/lang/Object;
.source "UTHitBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/UTHitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTHitBuilder"
.end annotation


# static fields
.field public static final FIELD_ARG1:Ljava/lang/String; = "_field_arg1"

.field public static final FIELD_ARG2:Ljava/lang/String; = "_field_arg2"

.field public static final FIELD_ARG3:Ljava/lang/String; = "_field_arg3"

.field public static final FIELD_ARGS:Ljava/lang/String; = "_field_args"

.field public static final FIELD_EVENT_ID:Ljava/lang/String; = "_field_event_id"

.field public static final FIELD_PAGE:Ljava/lang/String; = "_field_page"


# instance fields
.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    .line 44
    iget-object v0, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    const-string v1, "_field_page"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    const-string v1, "_field_page"

    const-string v2, "UT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 124
    if-eqz p0, :cond_6

    .line 126
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    const-string v0, ""

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, ""

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_1
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 135
    const-string p0, "checkIlleagleProperty"

    const-string v0, "IlleaglePropertyKey(PAGE) is setted when you call the method setProperty or setProperties ,please use another key to replace it!"

    invoke-static {p0, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return v1

    .line 139
    :cond_2
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dT:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string p0, "checkIlleagleProperty"

    const-string v0, "IlleaglePropertyKey(EVENTID) is setted when you call the method setProperty or setProperties ,please use another key to replace it!"

    invoke-static {p0, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    return v1

    .line 144
    :cond_3
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dU:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const-string p0, "checkIlleagleProperty"

    const-string v0, "IlleaglePropertyKey(ARG1) is setted when you call the method setProperty or setProperties ,please use another key to replace it!"

    invoke-static {p0, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    return v1

    .line 149
    :cond_4
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dV:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    const-string p0, "checkIlleagleProperty"

    const-string v0, "IlleaglePropertyKey(ARG2) is setted when you call the method setProperty or setProperties ,please use another key to replace it!"

    invoke-static {p0, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return v1

    .line 154
    :cond_5
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dW:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 155
    const-string p0, "checkIlleagleProperty"

    const-string v0, "IlleaglePropertyKey(ARG3) is setted when you call the method setProperty or setProperties ,please use another key to replace it!"

    invoke-static {p0, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    return v1

    .line 159
    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private static d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    if-eqz p0, :cond_5

    .line 167
    const-string v0, "_field_page"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "_field_page"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    const-string v1, "_field_page"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->dS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    const-string v0, "_field_arg1"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v0, "_field_arg1"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    const-string v1, "_field_arg1"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->dU:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_1
    const-string v0, "_field_arg2"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const-string v0, "_field_arg2"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    const-string v1, "_field_arg2"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->dV:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_2
    const-string v0, "_field_arg3"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    const-string v0, "_field_arg3"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    const-string v1, "_field_arg3"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->dW:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_3
    const-string v0, "_field_args"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    const-string v0, "_field_args"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    const-string v1, "_field_args"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->dX:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_4
    const-string v0, "_field_event_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    const-string v0, "_field_event_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    const-string v1, "_field_event_id"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->dT:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_5
    return-void
.end method

.method private static e(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    if-eqz p0, :cond_5

    .line 210
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dT:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dT:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_1
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dU:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dU:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_2
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dV:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dV:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dW:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dW:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_4
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dX:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->dX:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_5
    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    invoke-static {v0}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->a(Ljava/util/Map;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 112
    return-object v2

    .line 114
    :cond_0
    invoke-static {v0}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->e(Ljava/util/Map;)V

    .line 115
    invoke-static {v0}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->d(Ljava/util/Map;)V

    .line 117
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->dT:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    return-object v2

    .line 120
    :cond_1
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 97
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ut/mini/UTHitBuilders$UTHitBuilder;"
        }
    .end annotation

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 81
    :cond_0
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    .locals 1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 60
    iget-object v0, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->y:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_1
    const-string p1, "setProperty"

    const-string p2, "key is null or key is empty or value is null,please check it!"

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-object p0
.end method
