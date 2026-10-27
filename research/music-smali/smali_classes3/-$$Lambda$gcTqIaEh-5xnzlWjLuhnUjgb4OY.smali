.class public final synthetic L-$$Lambda$gcTqIaEh-5xnzlWjLuhnUjgb4OY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$gcTqIaEh-5xnzlWjLuhnUjgb4OY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$gcTqIaEh-5xnzlWjLuhnUjgb4OY;

    invoke-direct {v0}, L-$$Lambda$gcTqIaEh-5xnzlWjLuhnUjgb4OY;-><init>()V

    sput-object v0, L-$$Lambda$gcTqIaEh-5xnzlWjLuhnUjgb4OY;->INSTANCE:L-$$Lambda$gcTqIaEh-5xnzlWjLuhnUjgb4OY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object v0
.end method
