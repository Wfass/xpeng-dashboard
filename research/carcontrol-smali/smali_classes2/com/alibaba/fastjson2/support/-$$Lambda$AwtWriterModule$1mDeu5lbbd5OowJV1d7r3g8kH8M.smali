.class public final synthetic Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1mDeu5lbbd5OowJV1d7r3g8kH8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1mDeu5lbbd5OowJV1d7r3g8kH8M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1mDeu5lbbd5OowJV1d7r3g8kH8M;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1mDeu5lbbd5OowJV1d7r3g8kH8M;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1mDeu5lbbd5OowJV1d7r3g8kH8M;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1mDeu5lbbd5OowJV1d7r3g8kH8M;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/support/AwtWriterModule;->lambda$1mDeu5lbbd5OowJV1d7r3g8kH8M(Ljava/awt/Font;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
