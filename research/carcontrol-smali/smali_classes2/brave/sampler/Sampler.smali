.class public abstract Lbrave/sampler/Sampler;
.super Ljava/lang/Object;
.source "Sampler.java"


# static fields
.field public static final ALWAYS_SAMPLE:Lbrave/sampler/Sampler;

.field public static final NEVER_SAMPLE:Lbrave/sampler/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lbrave/sampler/Sampler$1;

    invoke-direct {v0}, Lbrave/sampler/Sampler$1;-><init>()V

    sput-object v0, Lbrave/sampler/Sampler;->ALWAYS_SAMPLE:Lbrave/sampler/Sampler;

    .line 27
    new-instance v0, Lbrave/sampler/Sampler$2;

    invoke-direct {v0}, Lbrave/sampler/Sampler$2;-><init>()V

    sput-object v0, Lbrave/sampler/Sampler;->NEVER_SAMPLE:Lbrave/sampler/Sampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(F)Lbrave/sampler/Sampler;
    .locals 0

    .line 53
    invoke-static {p0}, Lbrave/sampler/CountingSampler;->create(F)Lbrave/sampler/Sampler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract isSampled(J)Z
.end method
