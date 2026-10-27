.class public final synthetic L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;

    invoke-direct {v0}, L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;-><init>()V

    sput-object v0, L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;->INSTANCE:L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
