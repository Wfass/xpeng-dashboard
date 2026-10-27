.class public Lcom/alibaba/fastjson2/schema/UnresolvedReference;
.super Lcom/alibaba/fastjson2/schema/JSONSchema;
.source "UnresolvedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/schema/UnresolvedReference$PropertyResolveTask;,
        Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;
    }
.end annotation


# instance fields
.field final refName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/UnresolvedReference;->refName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 15
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->UnresolvedReference:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method

.method public validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 0

    .line 20
    sget-object p1, Lcom/alibaba/fastjson2/schema/JSONSchema;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1
.end method
