.class public final synthetic L-$$Lambda$xa$gY1vPvIh6pYdrRVSRTj1HZZkysw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$xa$gY1vPvIh6pYdrRVSRTj1HZZkysw;->f$0:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L-$$Lambda$xa$gY1vPvIh6pYdrRVSRTj1HZZkysw;->f$0:Ljava/lang/reflect/Method;

    invoke-static {v0, p1}, Lxa;->lambda$gY1vPvIh6pYdrRVSRTj1HZZkysw(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
