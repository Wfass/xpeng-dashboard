.class public final synthetic L-$$Lambda$aad$ay6K6vcNyv0QV6wcSMmunpjBNfA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field private final synthetic f$0:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$aad$ay6K6vcNyv0QV6wcSMmunpjBNfA;->f$0:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L-$$Lambda$aad$ay6K6vcNyv0QV6wcSMmunpjBNfA;->f$0:Ljava/util/Iterator;

    invoke-static {v0, p1}, Laad;->lambda$ay6K6vcNyv0QV6wcSMmunpjBNfA(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
