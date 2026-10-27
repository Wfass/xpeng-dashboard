.class public Lcom/alibaba/fastjson/Fastjson1xWriterModule;
.super Ljava/lang/Object;
.source "Fastjson1xWriterModule.java"

# interfaces
.implements Lcom/alibaba/fastjson2/modules/ObjectWriterModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/Fastjson1xWriterModule$JSONAwareWriter;
    }
.end annotation


# instance fields
.field final provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson/Fastjson1xWriterModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    return-void
.end method


# virtual methods
.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    if-eqz p2, :cond_0

    .line 20
    const-class p1, Lcom/alibaba/fastjson/JSONAware;

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alibaba/fastjson/JSONArray;

    if-eq p1, p2, :cond_0

    const-class p1, Lcom/alibaba/fastjson/JSONObject;

    if-eq p1, p2, :cond_0

    .line 25
    sget-object p1, Lcom/alibaba/fastjson/Fastjson1xWriterModule$JSONAwareWriter;->INSTANCE:Lcom/alibaba/fastjson/Fastjson1xWriterModule$JSONAwareWriter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
