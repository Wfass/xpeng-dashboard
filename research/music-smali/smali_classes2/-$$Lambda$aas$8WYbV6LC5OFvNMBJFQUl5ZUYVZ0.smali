.class public final synthetic L-$$Lambda$aas$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$aas$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$aas$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0;

    invoke-direct {v0}, L-$$Lambda$aas$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0;-><init>()V

    sput-object v0, L-$$Lambda$aas$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0;->INSTANCE:L-$$Lambda$aas$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0;

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

    check-cast p1, Ljava/awt/Font;

    invoke-static {p1}, Laas;->lambda$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0(Ljava/awt/Font;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
