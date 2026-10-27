.class final enum Lbrave/internal/handler/MutableSpanConverter$Consumer;
.super Ljava/lang/Enum;
.source "MutableSpanConverter.java"

# interfaces
.implements Lbrave/handler/MutableSpan$TagConsumer;
.implements Lbrave/handler/MutableSpan$AnnotationConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/internal/handler/MutableSpanConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Consumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbrave/internal/handler/MutableSpanConverter$Consumer;",
        ">;",
        "Lbrave/handler/MutableSpan$TagConsumer<",
        "Lzipkin2/Span$Builder;",
        ">;",
        "Lbrave/handler/MutableSpan$AnnotationConsumer<",
        "Lzipkin2/Span$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbrave/internal/handler/MutableSpanConverter$Consumer;

.field public static final enum INSTANCE:Lbrave/internal/handler/MutableSpanConverter$Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Lbrave/internal/handler/MutableSpanConverter$Consumer;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbrave/internal/handler/MutableSpanConverter$Consumer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/internal/handler/MutableSpanConverter$Consumer;->INSTANCE:Lbrave/internal/handler/MutableSpanConverter$Consumer;

    const/4 v1, 0x1

    new-array v1, v1, [Lbrave/internal/handler/MutableSpanConverter$Consumer;

    aput-object v0, v1, v2

    .line 79
    sput-object v1, Lbrave/internal/handler/MutableSpanConverter$Consumer;->$VALUES:[Lbrave/internal/handler/MutableSpanConverter$Consumer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbrave/internal/handler/MutableSpanConverter$Consumer;
    .locals 1

    .line 79
    const-class v0, Lbrave/internal/handler/MutableSpanConverter$Consumer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbrave/internal/handler/MutableSpanConverter$Consumer;

    return-object p0
.end method

.method public static values()[Lbrave/internal/handler/MutableSpanConverter$Consumer;
    .locals 1

    .line 79
    sget-object v0, Lbrave/internal/handler/MutableSpanConverter$Consumer;->$VALUES:[Lbrave/internal/handler/MutableSpanConverter$Consumer;

    invoke-virtual {v0}, [Lbrave/internal/handler/MutableSpanConverter$Consumer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbrave/internal/handler/MutableSpanConverter$Consumer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;JLjava/lang/String;)V
    .locals 0

    .line 79
    check-cast p1, Lzipkin2/Span$Builder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lbrave/internal/handler/MutableSpanConverter$Consumer;->accept(Lzipkin2/Span$Builder;JLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    check-cast p1, Lzipkin2/Span$Builder;

    invoke-virtual {p0, p1, p2, p3}, Lbrave/internal/handler/MutableSpanConverter$Consumer;->accept(Lzipkin2/Span$Builder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public accept(Lzipkin2/Span$Builder;JLjava/lang/String;)V
    .locals 0

    .line 87
    invoke-virtual {p1, p2, p3, p4}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    return-void
.end method

.method public accept(Lzipkin2/Span$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-virtual {p1, p2, p3}, Lzipkin2/Span$Builder;->putTag(Ljava/lang/String;Ljava/lang/String;)Lzipkin2/Span$Builder;

    return-void
.end method
