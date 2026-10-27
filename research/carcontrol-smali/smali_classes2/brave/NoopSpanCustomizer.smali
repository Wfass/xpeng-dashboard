.class public final enum Lbrave/NoopSpanCustomizer;
.super Ljava/lang/Enum;
.source "NoopSpanCustomizer.java"

# interfaces
.implements Lbrave/SpanCustomizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbrave/NoopSpanCustomizer;",
        ">;",
        "Lbrave/SpanCustomizer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbrave/NoopSpanCustomizer;

.field public static final enum INSTANCE:Lbrave/NoopSpanCustomizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lbrave/NoopSpanCustomizer;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbrave/NoopSpanCustomizer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/NoopSpanCustomizer;->INSTANCE:Lbrave/NoopSpanCustomizer;

    const/4 v1, 0x1

    new-array v1, v1, [Lbrave/NoopSpanCustomizer;

    aput-object v0, v1, v2

    .line 8
    sput-object v1, Lbrave/NoopSpanCustomizer;->$VALUES:[Lbrave/NoopSpanCustomizer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbrave/NoopSpanCustomizer;
    .locals 1

    .line 8
    const-class v0, Lbrave/NoopSpanCustomizer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbrave/NoopSpanCustomizer;

    return-object p0
.end method

.method public static values()[Lbrave/NoopSpanCustomizer;
    .locals 1

    .line 8
    sget-object v0, Lbrave/NoopSpanCustomizer;->$VALUES:[Lbrave/NoopSpanCustomizer;

    invoke-virtual {v0}, [Lbrave/NoopSpanCustomizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbrave/NoopSpanCustomizer;

    return-object v0
.end method


# virtual methods
.method public annotate(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    return-object p0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    return-object p0
.end method
