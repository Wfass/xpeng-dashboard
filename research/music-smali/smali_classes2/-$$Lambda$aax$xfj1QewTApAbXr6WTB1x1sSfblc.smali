.class public final synthetic L-$$Lambda$aax$xfj1QewTApAbXr6WTB1x1sSfblc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:[Ljava/lang/Enum;

.field private final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Enum;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$aax$xfj1QewTApAbXr6WTB1x1sSfblc;->f$0:[Ljava/lang/Enum;

    iput-object p2, p0, L-$$Lambda$aax$xfj1QewTApAbXr6WTB1x1sSfblc;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, L-$$Lambda$aax$xfj1QewTApAbXr6WTB1x1sSfblc;->f$0:[Ljava/lang/Enum;

    iget-object v1, p0, L-$$Lambda$aax$xfj1QewTApAbXr6WTB1x1sSfblc;->f$1:[Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {v0, v1, p1}, Laax;->lambda$xfj1QewTApAbXr6WTB1x1sSfblc([Ljava/lang/Enum;[Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-void
.end method
