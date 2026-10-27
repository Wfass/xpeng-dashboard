.class public final synthetic Lcom/alibaba/fastjson2/-$$Lambda$JSONPathSegment$CycleNameSegment$MapRecursive$3rlW__EZjydeBc9cKYOe9jEdozo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/-$$Lambda$JSONPathSegment$CycleNameSegment$MapRecursive$3rlW__EZjydeBc9cKYOe9jEdozo;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/-$$Lambda$JSONPathSegment$CycleNameSegment$MapRecursive$3rlW__EZjydeBc9cKYOe9jEdozo;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;->lambda$recursive$0(Ljava/lang/Object;Lcom/alibaba/fastjson2/writer/FieldWriter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
