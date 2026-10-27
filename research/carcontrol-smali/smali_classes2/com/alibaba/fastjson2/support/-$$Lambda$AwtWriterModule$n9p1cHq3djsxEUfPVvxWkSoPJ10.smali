.class public final synthetic Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$n9p1cHq3djsxEUfPVvxWkSoPJ10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$n9p1cHq3djsxEUfPVvxWkSoPJ10;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$n9p1cHq3djsxEUfPVvxWkSoPJ10;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$n9p1cHq3djsxEUfPVvxWkSoPJ10;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$n9p1cHq3djsxEUfPVvxWkSoPJ10;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$n9p1cHq3djsxEUfPVvxWkSoPJ10;

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

    check-cast p1, Ljava/awt/Point;

    invoke-static {p1}, Lcom/alibaba/fastjson2/support/AwtWriterModule;->lambda$getObjectWriter$1(Ljava/awt/Point;)I

    move-result p1

    return p1
.end method
