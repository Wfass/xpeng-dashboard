.class public final synthetic L-$$Lambda$qr$jMtbZJYfgNsUAUKW1YJNQ-4ws8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lqr;


# instance fields
.field private final synthetic f$0:Lqr;

.field private final synthetic f$1:Lqr;


# direct methods
.method public synthetic constructor <init>(Lqr;Lqr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$qr$jMtbZJYfgNsUAUKW1YJNQ-4ws8I;->f$0:Lqr;

    iput-object p2, p0, L-$$Lambda$qr$jMtbZJYfgNsUAUKW1YJNQ-4ws8I;->f$1:Lqr;

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, L-$$Lambda$qr$jMtbZJYfgNsUAUKW1YJNQ-4ws8I;->f$0:Lqr;

    iget-object v1, p0, L-$$Lambda$qr$jMtbZJYfgNsUAUKW1YJNQ-4ws8I;->f$1:Lqr;

    invoke-static {v0, v1, p1, p2, p3}, Lqr;->lambda$jMtbZJYfgNsUAUKW1YJNQ-4ws8I(Lqr;Lqr;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
