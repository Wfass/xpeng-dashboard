.class public final synthetic Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriters$u61K52GSm6pXr_jTHM5ZAOIYVcI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ToLongFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriters$u61K52GSm6pXr_jTHM5ZAOIYVcI;->f$0:Ljava/util/function/ToLongFunction;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriters$u61K52GSm6pXr_jTHM5ZAOIYVcI;->f$0:Ljava/util/function/ToLongFunction;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->lambda$ofToBooleanArray$0(Ljava/util/function/ToLongFunction;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
