.class public final synthetic Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$eeeYWclVoJCiPPX-g5nvuZilM38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/NameFilter;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/fastjson/serializer/NameFilter;

.field private final synthetic f$1:Lcom/alibaba/fastjson/serializer/NameFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson/serializer/NameFilter;Lcom/alibaba/fastjson/serializer/NameFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$eeeYWclVoJCiPPX-g5nvuZilM38;->f$0:Lcom/alibaba/fastjson/serializer/NameFilter;

    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$eeeYWclVoJCiPPX-g5nvuZilM38;->f$1:Lcom/alibaba/fastjson/serializer/NameFilter;

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$eeeYWclVoJCiPPX-g5nvuZilM38;->f$0:Lcom/alibaba/fastjson/serializer/NameFilter;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$eeeYWclVoJCiPPX-g5nvuZilM38;->f$1:Lcom/alibaba/fastjson/serializer/NameFilter;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/NameFilter;->lambda$compose$1(Lcom/alibaba/fastjson/serializer/NameFilter;Lcom/alibaba/fastjson/serializer/NameFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
