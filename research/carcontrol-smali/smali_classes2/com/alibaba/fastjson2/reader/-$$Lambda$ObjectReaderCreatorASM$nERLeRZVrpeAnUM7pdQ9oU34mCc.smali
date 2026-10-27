.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$nERLeRZVrpeAnUM7pdQ9oU34mCc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Constructor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$nERLeRZVrpeAnUM7pdQ9oU34mCc;->f$0:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$nERLeRZVrpeAnUM7pdQ9oU34mCc;->f$0:Ljava/lang/reflect/Constructor;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM;->lambda$createValueConsumer0$6(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
