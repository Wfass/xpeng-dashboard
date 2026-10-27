.class public Lcom/alibaba/fastjson2/filter/PascalNameFilter;
.super Ljava/lang/Object;
.source "PascalNameFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/NameFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 10
    sget-object p1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
