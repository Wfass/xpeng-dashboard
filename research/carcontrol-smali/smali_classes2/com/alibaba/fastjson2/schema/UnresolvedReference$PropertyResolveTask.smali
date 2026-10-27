.class Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;
.super Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;
.source "UnresolvedReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/schema/UnresolvedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertyResolveTask"
.end annotation


# instance fields
.field final entryKey:Ljava/lang/String;

.field final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;"
        }
    .end annotation
.end field

.field final refName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;->properties:Ljava/util/Map;

    .line 35
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;->entryKey:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;->refName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method resolve(Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 2

    .line 42
    instance-of v0, p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;

    iget-object p1, p1, Lcom/alibaba/fastjson2/schema/ObjectSchema;->defs:Ljava/util/Map;

    goto :goto_0

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    if-eqz v0, :cond_1

    .line 45
    check-cast p1, Lcom/alibaba/fastjson2/schema/ArraySchema;

    iget-object p1, p1, Lcom/alibaba/fastjson2/schema/ArraySchema;->defs:Ljava/util/Map;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;->refName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p1, :cond_3

    .line 54
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;->properties:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;->entryKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
