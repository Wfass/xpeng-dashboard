.class public final synthetic Lcom/xiaopeng/devtools/utils/b/-$$Lambda$a$7iU6FO91hu3XZRUnlhRInt2INII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/devtools/utils/b/-$$Lambda$a$7iU6FO91hu3XZRUnlhRInt2INII;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/devtools/utils/b/-$$Lambda$a$7iU6FO91hu3XZRUnlhRInt2INII;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/utils/b/-$$Lambda$a$7iU6FO91hu3XZRUnlhRInt2INII;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/utils/b/-$$Lambda$a$7iU6FO91hu3XZRUnlhRInt2INII;->INSTANCE:Lcom/xiaopeng/devtools/utils/b/-$$Lambda$a$7iU6FO91hu3XZRUnlhRInt2INII;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/utils/b/a;->lambda$7iU6FO91hu3XZRUnlhRInt2INII([B[B)I

    move-result p1

    return p1
.end method
