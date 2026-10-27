.class public final synthetic Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/awt/Color;

    invoke-static {p1}, Lcom/alibaba/fastjson2/support/AwtWriterModule;->lambda$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE(Ljava/awt/Color;)I

    move-result p1

    return p1
.end method
