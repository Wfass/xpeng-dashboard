.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$ot7XyeXZz0bt5MpYVSztY8xGP30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/reader/FieldReader;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$ot7XyeXZz0bt5MpYVSztY8xGP30;->f$0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$ot7XyeXZz0bt5MpYVSztY8xGP30;->f$0:Lcom/alibaba/fastjson2/reader/FieldReader;

    check-cast p1, Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->lambda$putIfAbsent$8(Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;)Z

    move-result p1

    return p1
.end method
