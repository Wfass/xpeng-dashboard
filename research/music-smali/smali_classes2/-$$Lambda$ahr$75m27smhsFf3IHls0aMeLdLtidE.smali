.class public final synthetic L-$$Lambda$ahr$75m27smhsFf3IHls0aMeLdLtidE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field private final synthetic f$0:Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ToLongFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$ahr$75m27smhsFf3IHls0aMeLdLtidE;->f$0:Ljava/util/function/ToLongFunction;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, L-$$Lambda$ahr$75m27smhsFf3IHls0aMeLdLtidE;->f$0:Ljava/util/function/ToLongFunction;

    invoke-static {v0, p1}, Lahr;->lambda$75m27smhsFf3IHls0aMeLdLtidE(Ljava/util/function/ToLongFunction;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
