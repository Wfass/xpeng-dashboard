.class Lcom/alibaba/fastjson/Fastjson1xWriterModule$JSONAwareWriter;
.super Ljava/lang/Object;
.source "Fastjson1xWriterModule.java"

# interfaces
.implements Laem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/Fastjson1xWriterModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONAwareWriter"
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson/Fastjson1xWriterModule$JSONAwareWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/Fastjson1xWriterModule$JSONAwareWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/Fastjson1xWriterModule$JSONAwareWriter;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/Fastjson1xWriterModule$JSONAwareWriter;->INSTANCE:Lcom/alibaba/fastjson/Fastjson1xWriterModule$JSONAwareWriter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 42
    :cond_0
    check-cast p2, Lcom/alibaba/fastjson/JSONAware;

    .line 43
    invoke-interface {p2}, Lcom/alibaba/fastjson/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    return-void
.end method
