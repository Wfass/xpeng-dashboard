.class public final synthetic Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$B_r0IEmQtj6rRsbNGxNAvOSjVSw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/NameFilter;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/fastjson/PropertyNamingStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$B_r0IEmQtj6rRsbNGxNAvOSjVSw;->f$0:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$B_r0IEmQtj6rRsbNGxNAvOSjVSw;->f$0:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/NameFilter;->lambda$of$0(Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
